<table>
    <tr><td>Name</td>
        <td><g:textField name="stdName" value="${studentInfo?.stdName}"></g:textField></td>
    </tr>

    <tr><td>Address</td>
        <td><g:textField name="address" value="${studentInfo?.address}"></g:textField></td>
    </tr>

    <tr><td>Email</td>
        <td><g:textField name="email" value="${studentInfo?.email}"></g:textField></td>
    </tr>

    <tr><td>Phone Number</td>
        <td><g:textField name="phone" value="${studentInfo?.phone}"></g:textField></td>
    </tr>

    <tr><td>Roll Number</td>
        <td><g:textField name="rollNum" value="${studentInfo?.rollNum}"></g:textField></td>
    </tr>

    <tr><td>Batch</td>
        <td><g:textField name="batch" value="${studentInfo?.batch}"></g:textField></td>
    </tr>

    <tr><td>Image</td>
        <td><input type="file" name="studentImage"></td>
    </tr>

</table>