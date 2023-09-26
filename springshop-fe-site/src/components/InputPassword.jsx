import React from 'react'

export default function InputPassword(props) {
    const register=props.register
    const label=props.label
    const tonglePassword = (e) => {
        const password = e.target.previousElementSibling
        const type = password.getAttribute('type') === 'password' ? 'text': 'password';
        password.setAttribute('type', type);
        e.target.classList.toggle('fa-eye-slash')
    }

  return (
    <>
        <input {...register(label)} type="password" className="span3" placeholder="Password" /><i onClick={tonglePassword} class="fa fa-eye" style={{ marginLeft: '-30px', cursor: 'pointer', verticalAlign:'5px'}} aria-hidden="true"></i>
    </>
  )
}
