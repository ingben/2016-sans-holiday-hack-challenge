.class public Lcom/northpolewonderland/santagram/SignUp;
.super Landroid/support/v7/a/e;


# instance fields
.field fullnameTxt:Landroid/widget/EditText;

.field passwordTxt:Landroid/widget/EditText;

.field progDialog:Landroid/app/ProgressDialog;

.field usernameTxt:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v7/a/e;-><init>()V

    return-void
.end method


# virtual methods
.method public dismisskeyboard()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/northpolewonderland/santagram/SignUp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/northpolewonderland/santagram/SignUp;->usernameTxt:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    iget-object v1, p0, Lcom/northpolewonderland/santagram/SignUp;->passwordTxt:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    iget-object v1, p0, Lcom/northpolewonderland/santagram/SignUp;->fullnameTxt:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    const/4 v2, 0x1

    invoke-super {p0, p1}, Landroid/support/v7/a/e;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f04003f

    invoke-virtual {p0, v0}, Lcom/northpolewonderland/santagram/SignUp;->setContentView(I)V

    invoke-super {p0, v2}, Landroid/support/v7/a/e;->setRequestedOrientation(I)V

    invoke-virtual {p0}, Lcom/northpolewonderland/santagram/SignUp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/northpolewonderland/santagram/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/northpolewonderland/santagram/SignUp;->getSupportActionBar()Landroid/support/v7/a/a;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v7/a/a;->a(Z)V

    invoke-virtual {p0}, Lcom/northpolewonderland/santagram/SignUp;->getSupportActionBar()Landroid/support/v7/a/a;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v7/a/a;->b(Z)V

    invoke-virtual {p0}, Lcom/northpolewonderland/santagram/SignUp;->getSupportActionBar()Landroid/support/v7/a/a;

    move-result-object v0

    const-string v1, "Sign Up"

    invoke-virtual {v0, v1}, Landroid/support/v7/a/a;->a(Ljava/lang/CharSequence;)V

    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/northpolewonderland/santagram/SignUp;->progDialog:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/northpolewonderland/santagram/SignUp;->progDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f070018

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(I)V

    iget-object v0, p0, Lcom/northpolewonderland/santagram/SignUp;->progDialog:Landroid/app/ProgressDialog;

    const-string v1, "Signing Up..."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/northpolewonderland/santagram/SignUp;->progDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    const v0, 0x7f0d00e2

    invoke-virtual {p0, v0}, Lcom/northpolewonderland/santagram/SignUp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/northpolewonderland/santagram/SignUp;->usernameTxt:Landroid/widget/EditText;

    const v0, 0x7f0d00e3

    invoke-virtual {p0, v0}, Lcom/northpolewonderland/santagram/SignUp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/northpolewonderland/santagram/SignUp;->passwordTxt:Landroid/widget/EditText;

    const v0, 0x7f0d00e4

    invoke-virtual {p0, v0}, Lcom/northpolewonderland/santagram/SignUp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/northpolewonderland/santagram/SignUp;->fullnameTxt:Landroid/widget/EditText;

    const v0, 0x7f0d00e5

    invoke-virtual {p0, v0}, Lcom/northpolewonderland/santagram/SignUp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/northpolewonderland/santagram/SignUp$1;

    invoke-direct {v1, p0}, Lcom/northpolewonderland/santagram/SignUp$1;-><init>(Lcom/northpolewonderland/santagram/SignUp;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0d00e6

    invoke-virtual {p0, v0}, Lcom/northpolewonderland/santagram/SignUp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/northpolewonderland/santagram/SignUp$2;

    invoke-direct {v1, p0}, Lcom/northpolewonderland/santagram/SignUp$2;-><init>(Lcom/northpolewonderland/santagram/SignUp;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/support/v7/a/e;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/northpolewonderland/santagram/SignUp;->finish()V

    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
