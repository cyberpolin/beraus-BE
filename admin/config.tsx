import { jsx, config } from '@keystone-6/core'
import Image from 'next/image'

function Logo () {
  return <img src='/images/logo.png' width={150} alt='Altozano Tabasco - Cumbres 7' />
}

export const components = {
  Logo
}

// export default config({files: {
//   upload: 'local',
//   local: {
//     storagePath: 'public/files',
//     baseUrl: '/public',
//   },
// }})