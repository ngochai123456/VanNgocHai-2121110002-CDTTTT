
import React from 'react'
import { useForm } from 'react-hook-form'
import InputPassword from '../components/InputPassword';

export default function Register() {
    const { register, handleSubmit } = useForm();

    const onSubmit = (data) => {
        alert('call api register')
    };
    return (
        <div>
            <ul className="breadcrumb">
                <li><a href="index.html">Home</a> <span className="divider">/</span></li>
                <li className="active">Registration</li>
            </ul>
            <h3> Registration</h3>
            <hr className="soft" />
            <div className="well">
                <form className="form-horizontal"onSubmit={handleSubmit(onSubmit)}>
                    <h3>Your Personal Details</h3>
                    <div className="control-group">
                    </div>
                    <div className="control-group">
                        <label className="control-label" htmlFor="inputFname">username <sup>*</sup></label>
                        <div className="controls">
                            <input {...register('username')} type="text" id="inputFname" placeholder="username" />
                        </div>
                    </div>
                    <div className="control-group">
                    </div>
                    <div className="control-group">
                        <label className="control-label" htmlFor="inputEmail">Email <sup>*</sup></label>
                        <div className="controls">
                            <input {...register('email')} type="text" placeholder="Email" />
                        </div>
                    </div>
                    <div className="control-group">
                        <label className="control-label">Confirm Password <sup>*</sup></label>
                        <div className="controls">
                            <InputPassword label='confirmPassword' register = {register}/>
                        </div>
                    </div>
                    <div className="control-group">
                        <div className="controls">
                            <input type="submit" name="submitAccount" defaultValue="Register" className="exclusive shopBtn" />
                        </div>
                    </div>
                </form>
            </div>

        </div>

    )
}
