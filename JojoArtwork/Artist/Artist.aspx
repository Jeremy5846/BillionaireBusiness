<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Artist.aspx.cs" Inherits="AssignmentPart1.Artist" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>
    </title>
    <style type="text/css">
        .cssText{
            width:50%;
            text-align:center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Table ID="Table1" runat="server" Height="254px" Width="100%" BorderStyle="Inset" CellPadding="10" CellSpacing="10">
                <asp:TableHeaderRow >  
                    <asp:TableHeaderCell ColumnSpan="2">
                        <h1>
                        Upload Art
                            </h1>
                        </asp:TableHeaderCell>
                </asp:TableHeaderRow>  

                <asp:TableRow>
                    <asp:TableCell CssClass="cssText">
                        Art Name :
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:TextBox ID="nameTbt" runat="server"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>

                 <asp:TableRow>
                    <asp:TableCell CssClass="cssText">
                        Art type :
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:RadioButtonList ID="rblType" runat="server" RepeatColumns="3" RepeatDirection="Horizontal" CellPadding="5">
                        <asp:ListItem>Modern Art</asp:ListItem>
                        <asp:ListItem>19th Century Art</asp:ListItem>
                        <asp:ListItem>Renaissance Art</asp:ListItem>
                        <asp:ListItem>Abstract Art</asp:ListItem>
                        <asp:ListItem>Pop Art</asp:ListItem>
                        <asp:ListItem>Cubism</asp:ListItem>
                        <asp:ListItem>Art Deco</asp:ListItem>
                        <asp:ListItem>Art Nouveau</asp:ListItem>
                        <asp:ListItem>Surrealism</asp:ListItem>
                    </asp:RadioButtonList>
                    </asp:TableCell>
                </asp:TableRow>
                    
                <asp:TableRow>
                    <asp:TableCell CssClass="cssText">
                        Art Cost :
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:TextBox ID="costTbt" runat="server"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>

                 <asp:TableRow>
                    <asp:TableCell CssClass="cssText">
                        Art Description :
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:TextBox ID="descTbt" runat="server" TextMode="MultiLine" Wrap="true"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>

                <asp:TableRow>
                    <asp:TableCell CssClass="cssText">
                        Upload Art :
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:FileUpload ID="ImageUpload" runat="server"/>
                    </asp:TableCell>
                </asp:TableRow>

                <asp:TableRow ID="quantityGrp">
                    <asp:TableCell CssClass="cssText">
                        <asp:Label ID="Label1" runat="server" Text="Quantity"></asp:Label>&nbsp;:&nbsp;
                    </asp:TableCell>
                    <asp:TableCell >
                               <asp:DropDownList ID="ddlQuantity" runat="server">
                                    <asp:ListItem>1</asp:ListItem>
                                    <asp:ListItem>2</asp:ListItem>
                                    <asp:ListItem>3</asp:ListItem>
                                    <asp:ListItem>4</asp:ListItem>
                                    <asp:ListItem>5</asp:ListItem>
                                    <asp:ListItem>6</asp:ListItem>
                                    <asp:ListItem>7</asp:ListItem>
                                    <asp:ListItem>8</asp:ListItem>
                                    <asp:ListItem>9</asp:ListItem>
                                    <asp:ListItem>10</asp:ListItem>
                                    <asp:ListItem>11</asp:ListItem>
                                    <asp:ListItem>12</asp:ListItem>
                                    <asp:ListItem>13</asp:ListItem>
                                    <asp:ListItem>14</asp:ListItem>
                                    <asp:ListItem>15</asp:ListItem>
                                    <asp:ListItem>16</asp:ListItem>
                                    <asp:ListItem>17</asp:ListItem>
                                    <asp:ListItem>18</asp:ListItem>
                                    <asp:ListItem>19</asp:ListItem>
                                    <asp:ListItem>20</asp:ListItem>
                                    <asp:ListItem>21</asp:ListItem>
                                    <asp:ListItem>22</asp:ListItem>
                                    <asp:ListItem>23</asp:ListItem>
                                    <asp:ListItem>24</asp:ListItem>
                                    <asp:ListItem>25</asp:ListItem>
                                    <asp:ListItem>26</asp:ListItem>
                                    <asp:ListItem>27</asp:ListItem>
                                    <asp:ListItem>28</asp:ListItem>
                                    <asp:ListItem>29</asp:ListItem>
                                    <asp:ListItem>30</asp:ListItem>
                                    <asp:ListItem>31</asp:ListItem>
                                    <asp:ListItem>32</asp:ListItem>
                                    <asp:ListItem>33</asp:ListItem>
                                    <asp:ListItem>34</asp:ListItem>
                                    <asp:ListItem>35</asp:ListItem>
                                    <asp:ListItem>36</asp:ListItem>
                                    <asp:ListItem>37</asp:ListItem>
                                    <asp:ListItem>38</asp:ListItem>
                                    <asp:ListItem>39</asp:ListItem>
                                    <asp:ListItem>40</asp:ListItem>
                                    <asp:ListItem>41</asp:ListItem>
                                    <asp:ListItem>42</asp:ListItem>
                                    <asp:ListItem>43</asp:ListItem>
                                    <asp:ListItem>44</asp:ListItem>
                                    <asp:ListItem>45</asp:ListItem>
                                    <asp:ListItem>46</asp:ListItem>
                                    <asp:ListItem>47</asp:ListItem>
                                    <asp:ListItem>48</asp:ListItem>
                                    <asp:ListItem>49</asp:ListItem>
                                    <asp:ListItem>50</asp:ListItem>
                                    <asp:ListItem>51</asp:ListItem>
                                    <asp:ListItem>52</asp:ListItem>
                                    <asp:ListItem>53</asp:ListItem>
                                    <asp:ListItem>54</asp:ListItem>
                                    <asp:ListItem>55</asp:ListItem>
                                    <asp:ListItem>56</asp:ListItem>
                                    <asp:ListItem>57</asp:ListItem>
                                    <asp:ListItem>58</asp:ListItem>
                                    <asp:ListItem>59</asp:ListItem>
                                    <asp:ListItem>60</asp:ListItem>
                                    <asp:ListItem>61</asp:ListItem>
                                    <asp:ListItem>62</asp:ListItem>
                                    <asp:ListItem>63</asp:ListItem>
                                    <asp:ListItem>64</asp:ListItem>
                                    <asp:ListItem>65</asp:ListItem>
                                    <asp:ListItem>66</asp:ListItem>
                                    <asp:ListItem>67</asp:ListItem>
                                    <asp:ListItem>68</asp:ListItem>
                                    <asp:ListItem>69</asp:ListItem>
                                    <asp:ListItem>70</asp:ListItem>
                                    <asp:ListItem>71</asp:ListItem>
                                    <asp:ListItem>72</asp:ListItem>
                                    <asp:ListItem>73</asp:ListItem>
                                    <asp:ListItem>74</asp:ListItem>
                                    <asp:ListItem>75</asp:ListItem>
                                    <asp:ListItem>76</asp:ListItem>
                                    <asp:ListItem>77</asp:ListItem>
                                    <asp:ListItem>78</asp:ListItem>
                                    <asp:ListItem>79</asp:ListItem>
                                    <asp:ListItem>80</asp:ListItem>
                                    <asp:ListItem>81</asp:ListItem>
                                    <asp:ListItem>82</asp:ListItem>
                                    <asp:ListItem>83</asp:ListItem>
                                    <asp:ListItem>84</asp:ListItem>
                                    <asp:ListItem>85</asp:ListItem>
                                    <asp:ListItem>86</asp:ListItem>
                                    <asp:ListItem>87</asp:ListItem>
                                    <asp:ListItem>88</asp:ListItem>
                                    <asp:ListItem>89</asp:ListItem>
                                    <asp:ListItem>90</asp:ListItem>
                                    <asp:ListItem>91</asp:ListItem>
                                    <asp:ListItem>92</asp:ListItem>
                                    <asp:ListItem>93</asp:ListItem>
                                    <asp:ListItem>94</asp:ListItem>
                                    <asp:ListItem>95</asp:ListItem>
                                    <asp:ListItem>96</asp:ListItem>
                                    <asp:ListItem>97</asp:ListItem>
                                    <asp:ListItem>98</asp:ListItem>
                                    <asp:ListItem>99</asp:ListItem>
                         </asp:DropDownList>
                    </asp:TableCell>
                </asp:TableRow>

                <asp:TableRow>
                    <asp:TableCell>
                        
                    </asp:TableCell>
                </asp:TableRow>

                <asp:TableRow>
                    <asp:TableCell>

                    </asp:TableCell>
                    <asp:TableCell>
                         <asp:Button ID="UploadBtn" runat="server" OnClick="UploadBtn_Click" Text="Upload" Width="80px"/>
                    </asp:TableCell>
                </asp:TableRow>

                <asp:TableFooterRow>
                    <asp:TableCell>
                        
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="lblMsg" runat="server" Visible="False" ForeColor="Green"></asp:Label>
                    </asp:TableCell>
                </asp:TableFooterRow>
            </asp:Table>

            <div style="float:right; margin-right:15px;margin-top:20px; margin-bottom:20px">
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Artist/ArtistMenu.aspx">Back to Menu</asp:HyperLink>
            </div>

        </div>                
    </form>
</body>
</html>
