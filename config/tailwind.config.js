const defaultTheme = require('tailwindcss/defaultTheme')

module.exports = {
  content: [
    './public/*.html',
    './app/helpers/**/*.rb',
    './app/javascript/**/*.js',
    './app/views/**/*.{erb,haml,html,slim}'
  ],
  theme: {
    extend: {
      fontFamily: {
        sans: ['Inter var', ...defaultTheme.fontFamily.sans],
        paragraph: ['Inter var', ...defaultTheme.fontFamily.sans],
        header: ['Kanit', ...defaultTheme.fontFamily.sans],
      },
      colors: {
        /* Previous color scheme.. Blake said its too dark and not blue/light enough... uh huh ..
        'custom-50': '#E3F1F6',
        'custom-100': '#C7E3ED',
        'custom-200': '#ABD4E4',
        'custom-300': '#72B8D2',
        'custom-400': '#3A9BC0',
        'custom-500': '#1E8DB7',
        'custom-600': '#135872',
        'custom-700': '#0F475B',
        'custom-800': '#0B3545',
        'custom-900': '#07232E',
        */
        'custom-50': '#ffbb59',   /* Custom Yellow for Sun City */
        'custom-100': '#aec4cc',
        'custom-200': '#90bccc',
        'custom-300': '#60b3d7',
        'custom-400': '#4299b8',
        'custom-500': '#198eb8',
        'custom-600': '#1780a6',
        'custom-700': '#135b88',
        'custom-800': '#0f4b6f',
        'custom-900': '#08293d', 
      },
      keyframes: {
        'plane-enter': {
          '0%': {
            opacity: 0,
            transform: 'translateX(-100%)',
          },
          '100%': {
            opacity: 1,
            transform: 'translateX(0)',
          },
        },
        'plane-leave': {
          '0%': {
            opacity: 1,
            transform: 'translateX(0)',
          },
          '50%': {
            opacity: 1,
            transform: 'translateX(50%)',
          },
          '100%': {
            opacity: 0,
            transform: 'translateX(100%)',
          },
        },
        marquee: {
          '0%': { transform: 'translateX(0%)' },
          '100%': { transform: 'translateX(-138%)' }, // 6 reviews = 168%
        },
        marquee2: {
          '0%': { transform: 'translateX(138%)' },
          '100%': { transform: 'translateX(0%)' },
        },
        marqueemobile: {
          '0%': { transform: 'translateX(0%)' },
          '100%': { transform: 'translateX(-152%)' },
        },
        marquee2mobile: {
          '0%': { transform: 'translateX(152%)' }, // 6 reviews = 174%
          '100%': { transform: 'translateX(0%)' },
        },
        'slide-in-left': {
          '0%': {
            transform: 'translateX(-100%)',
            opacity: 0
          },
          '100%': {
            transform: 'translateX(0)',
            opacity: 1
          },
        },
        'slide-out-left': {
          '0%': {
            transform: 'translateX(0)',
            opacity: 1,
          },
          '100%': {
            transform: 'translateX(-100%)',
            opacity: 0,
          },
        },
        'bounce-horizontal': {
          '0%': {
            transform: 'translateX(0)',
          },
          '50%': {
            transform: 'translateX(10px)', 
          },
          '100%': {
            transform: 'translateX(0)',
          },
        }
      },
      animation: {
        'bounce-horizontal': 'bounce-horizontal 1s ease-in-out infinite',
        
        'plane-enter': 'plane-enter 0.7s ease-out forwards',
        'plane-leave': 'plane-leave 0.3s ease-out forwards',
        

        marquee: 'marquee 55s linear infinite',
        marquee2: 'marquee2 55s linear infinite',
        marqueemobile: 'marqueemobile 55s linear infinite',
        marquee2mobile: 'marquee2mobile 55s linear infinite',

        'slide-in-left': 'slide-in-left 0.5s ease-out',
        'slide-in-left2': 'slide-in-left 0.6s ease-out',
        'slide-in-left3': 'slide-in-left 0.7s ease-out',
        'slide-in-left4': 'slide-in-left 0.8s ease-out',
        'slide-in-left5': 'slide-in-left 0.9s ease-out',
        'slide-in-left6': 'slide-in-left 1.0s ease-out',
        'slide-in-left7': 'slide-in-left 1.1s ease-out',

        'slide-out-left': 'slide-out-left 0.2s ease-out',
        'slide-out-left2': 'slide-out-left 0.3s ease-out',
        'slide-out-left3': 'slide-out-left 0.4s ease-out',
        'slide-out-left4': 'slide-out-left 0.5s ease-out',
        'slide-out-left5': 'slide-out-left 0.6s ease-out',
        'slide-out-left6': 'slide-out-left 0.7s ease-out',
        'slide-out-left7': 'slide-out-left 0.8s ease-out',

        'ping-1': 'ping 4s linear infinite',
        'ping-2': 'ping 4s linear infinite 0.5s',
        'ping-3': 'ping 4s linear infinite 1s',
      },
      backgroundImage : {
        'course1' : "url('sun-city-private-pilot.webp')",
        'course2' : "url('sun-city-instrument.webp')",
        'course3' : "url('sun-city-commercial.webp')",
        'course4' : "url('sun-city-multi-engine.webp')",
        'course5' : "url('sun-city-instructor.webp')",
        'course6' : "url('sun-city-atp.webp')",
        'luke' : "url('sun-city-luke.webp')",
        'experts' : "url('sun-city-shore-bg3.webp')",
        'about-us' : "url('sun-city-about-us-background.webp')",
        'airplanes' : "url('sun-city-airplanes-on-ramp.webp')",
        'flying' : "url('sun-city-flying-bg.webp')",
        'boeing' : "url('sun-city-boeing-bg.webp')",
        'discovery' : "url('sun-city-discovery-flight-bg.webp')",
        'check-fuel' : "url('sun-city-check-fuel.webp')",
        'aero-camp' : "url('sun-city-discovery-flight-aero-camp-bg.webp')",
        'clouds' : "url('sun-city-clouds.webp')",
        'sim' : "url('sun-city-in-the-simulator-bg.webp')",
        'airliner' : "url('sun-city-commercial-airliner-cockpit-bg.webp')",
        'uniform' : "url('sun-city-pilot-uniform-bg.webp')",
        'multi' : "url('sun-city-multi-bg.webp')",
        'multi-bottom' : "url('sun-city-multi-bg-bottom.webp')",
        'beach' : "url('sun-city-beach-bg.webp')",
        'cfi' : "url('sun-city-cfi-bg.webp')",
        'cfi2' : "url('sun-city-cfi-bg-2.webp')",
        'atp' : "url('sun-city-airliner-cockpit.webp')",
        'airline' : "url('sun-city-airline-pilot.webp')",
        'ses' : "url('sun-city-sea-plane-bg.webp')",
        'sea-selfie' : "url('sun-city-seaplane-selfie-bg.webp')",
        'oil' : "url('sun-city-instructor-checking-oil.webp')",
        'walk' : "url('sun-city-cfi-walking.webp')",
        'cloud2' : "url('sun-city-clouds-bg2.webp')",
        
      },
      height: theme => ({
        'screen-1/2': '50vh',
        'screen-2/3': '66vh',
        'screen-1/3': 'calc(100vh / 3)',
        'screen-3/4': '75vh',
        'screen-4/5': '80vh',
        'screen-mobile' : '92vh', //depends on menu height
      }),
    },
  },
  plugins: [
    require('@tailwindcss/forms'),
    require('@tailwindcss/aspect-ratio'),
    require('@tailwindcss/typography'),
  ]
}
