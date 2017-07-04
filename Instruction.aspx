<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Instruction.aspx.cs" Inherits="NumberSequenceGenerator.Instruction" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        
    </style>
</head>
<body style="font-family:'Arial Unicode MS'; font-size:13px; margin-left:10px;">
    <form id="form1" runat="server">
    <div>
    <div>
        <h1>Instruction</h1>
        <ul><li>After clicking Continue button which is given below you will redirect to another page.</li></ul>
        <ul><li>Enter any integer number. </li></ul>
        <ul><li>Click on Go button.</li></ul>
            <b>You will see the following Results:</b>
            <ul><li>All number sequence up to entered number. </li></ul>
            <ul><li>All odd number up to entered number. </li></ul>
            <ul><li>All even number up to entered number. </li></ul>
            <ul><li>All numbers up to and including the number entered, except when, <br />
            A number is a multiple of 3 output C, and when,<br />
            A number is a multiple of 5 output E, and when,<br />
            A number is a multiple of both 3 and 5 output Z,</li>
       </ul>
        
    </div>
        <div>
            <input type="button" name="Continue" value="Continue" title="Continue" style="background-color:black; font-family:Arial; font-weight:bold; color:white; border-radius:5px; height:25px; " onclick="javascript: ContinuetootherPage();" />
        </div>
    </div>
    </form>
</body>
</html>
<script>
    function ContinuetootherPage()
    {
        location.href = "NumberSequenceGen.aspx";
    }
</script>
