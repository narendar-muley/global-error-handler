%dw 2.0
output application/json skipNullOn="everywhere"
---
{
staticData: {
 fromEmail: p('email.sender-id'),
    toEmail: [

         p('email.receiver-id')

        ],

        ccEmail: [

            p('email.cc-id')

        ],

        subject: vars.originalPayload.subject,

        body: {

            content: vars.originalPayload.body default "",
            toMarkSecure: p('email.to-mark-secure'),
            bodyContentType: p('email.body-content-type')

        }

 },
 dynamicData:  if (vars.originalPayload.attachment != null) 
    
  {
    	   	

        inLineResource:[

            {

                data: {

                    content:  vars.originalPayload.attachment,
                    filetype: vars.originalPayload.fileType,
                    encoding: vars.originalPayload.encoding

                },

                inLineResourceID: vars.originalPayload.attachmentName,
               

            }

        ]	   
   
}
 else
  {}
}