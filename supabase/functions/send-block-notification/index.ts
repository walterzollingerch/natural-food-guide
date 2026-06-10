import { serve } from 'https://deno.land/std@0.168.0/http/server.ts'

const corsHeaders = {
  'Access-Control-Allow-Origin': '*',
  'Access-Control-Allow-Headers': 'authorization, x-client-info, apikey, content-type',
}

serve(async (req) => {
  if (req.method === 'OPTIONS') {
    return new Response('ok', { headers: corsHeaders })
  }

  try {
    const { email, name, blocked, appUrl } = await req.json()

    const RESEND_API_KEY = Deno.env.get('RESEND_API_KEY')
    const RESEND_FROM    = Deno.env.get('RESEND_FROM') || 'Soil to Soul <noreply@tomtalent.ch>'

    if (!RESEND_API_KEY) {
      return new Response(JSON.stringify({ error: 'RESEND_API_KEY not configured' }), {
        status: 500, headers: { ...corsHeaders, 'Content-Type': 'application/json' }
      })
    }

    const subject = blocked
      ? 'Dein Account wurde gesperrt – Soil to Soul Mgt Tool'
      : 'Dein Account wurde freigeschaltet – Soil to Soul Mgt Tool'

    const loginBtn = appUrl
      ? `<p style="margin:24px 0"><a href="${appUrl}" style="display:inline-block;padding:12px 28px;background:#1a1a1a;color:#d2dc46;text-decoration:none;border-radius:8px;font-weight:700;font-size:15px">Jetzt einloggen →</a></p>`
      : ''

    const bodyHtml = blocked
      ? `<div style="font-family:Arial,sans-serif;max-width:560px;margin:0 auto;padding:32px 24px">
          <div style="background:#d2dc46;border-radius:10px;padding:20px 24px;margin-bottom:28px">
            <span style="font-family:Arial Black,sans-serif;font-weight:900;font-size:18px">SOIL TO SOUL</span>
            <span style="font-size:13px;color:#555;margin-left:8px">Mgt Tool</span>
          </div>
          <h2 style="margin:0 0 16px;font-size:20px">Dein Account wurde gesperrt</h2>
          <p style="color:#444;line-height:1.6">Hallo${name ? ' ' + name : ''},</p>
          <p style="color:#444;line-height:1.6">dein Konto beim <strong>Soil to Soul Mgt Tool</strong> wurde von einem Administrator <strong>gesperrt</strong> und ist vorübergehend nicht zugänglich.</p>
          <p style="color:#444;line-height:1.6">Bitte wende dich an den Administrator, um weitere Informationen zu erhalten.</p>
          <p style="color:#aaa;font-size:12px;margin-top:32px;border-top:1px solid #eee;padding-top:16px">Dies ist eine automatische Benachrichtigung des Soil to Soul Mgt Tools.</p>
        </div>`
      : `<div style="font-family:Arial,sans-serif;max-width:560px;margin:0 auto;padding:32px 24px">
          <div style="background:#d2dc46;border-radius:10px;padding:20px 24px;margin-bottom:28px">
            <span style="font-family:Arial Black,sans-serif;font-weight:900;font-size:18px">SOIL TO SOUL</span>
            <span style="font-size:13px;color:#555;margin-left:8px">Mgt Tool</span>
          </div>
          <h2 style="margin:0 0 16px;font-size:20px">Dein Account ist jetzt aktiv ✓</h2>
          <p style="color:#444;line-height:1.6">Hallo${name ? ' ' + name : ''},</p>
          <p style="color:#444;line-height:1.6">dein Konto beim <strong>Soil to Soul Mgt Tool</strong> wurde von einem Administrator <strong>freigeschaltet</strong>. Du kannst dich jetzt einloggen.</p>
          ${loginBtn}
          <p style="color:#aaa;font-size:12px;margin-top:32px;border-top:1px solid #eee;padding-top:16px">Dies ist eine automatische Benachrichtigung des Soil to Soul Mgt Tools.</p>
        </div>`

    const res = await fetch('https://api.resend.com/emails', {
      method: 'POST',
      headers: {
        'Authorization': `Bearer ${RESEND_API_KEY}`,
        'Content-Type': 'application/json',
      },
      body: JSON.stringify({ from: RESEND_FROM, to: email, subject, html: bodyHtml }),
    })

    const data = await res.json()

    if (!res.ok) {
      return new Response(JSON.stringify({ error: data }), {
        status: res.status, headers: { ...corsHeaders, 'Content-Type': 'application/json' }
      })
    }

    return new Response(JSON.stringify({ ok: true, id: data.id }), {
      headers: { ...corsHeaders, 'Content-Type': 'application/json' }
    })

  } catch (err) {
    return new Response(JSON.stringify({ error: err.message }), {
      status: 500, headers: { ...corsHeaders, 'Content-Type': 'application/json' }
    })
  }
})
