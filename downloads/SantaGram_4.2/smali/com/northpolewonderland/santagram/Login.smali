.class public Lcom/northpolewonderland/santagram/Login;
.super Landroid/support/v7/a/e;


# instance fields
.field a:Landroid/app/ProgressDialog;

.field b:Landroid/widget/EditText;

.field c:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v7/a/e;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/support/v7/a/e;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f04002e

    invoke-virtual {p0, v0}, Lcom/northpolewonderland/santagram/Login;->setContentView(I)V

    const/4 v0, 0x1

    invoke-super {p0, v0}, Landroid/support/v7/a/e;->setRequestedOrientation(I)V

    invoke-virtual {p0}, Lcom/northpolewonderland/santagram/Login;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/northpolewonderland/santagram/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/northpolewonderland/santagram/Login;->getSupportActionBar()Landroid/support/v7/a/a;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/a/a;->b()V

    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/northpolewonderland/santagram/Login;->a:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/northpolewonderland/santagram/Login;->a:Landroid/app/ProgressDialog;

    const v1, 0x7f070018

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(I)V

    iget-object v0, p0, Lcom/northpolewonderland/santagram/Login;->a:Landroid/app/ProgressDialog;

    const-string v1, "Logging in..."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/northpolewonderland/santagram/Login;->a:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    const v0, 0x7f0d009e

    invoke-virtual {p0, v0}, Lcom/northpolewonderland/santagram/Login;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/northpolewonderland/santagram/Login;->b:Landroid/widget/EditText;

    const v0, 0x7f0d009f

    invoke-virtual {p0, v0}, Lcom/northpolewonderland/santagram/Login;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/northpolewonderland/santagram/Login;->c:Landroid/widget/EditText;

    const v0, 0x7f0d00a0

    invoke-virtual {p0, v0}, Lcom/northpolewonderland/santagram/Login;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/northpolewonderland/santagram/Login$1;

    invoke-direct {v1, p0}, Lcom/northpolewonderland/santagram/Login$1;-><init>(Lcom/northpolewonderland/santagram/Login;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0d00a2

    invoke-virtual {p0, v0}, Lcom/northpolewonderland/santagram/Login;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/northpolewonderland/santagram/Login$2;

    invoke-direct {v1, p0}, Lcom/northpolewonderland/santagram/Login$2;-><init>(Lcom/northpolewonderland/santagram/Login;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0d00a1

    invoke-virtual {p0, v0}, Lcom/northpolewonderland/santagram/Login;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/northpolewonderland/santagram/Login$3;

    invoke-direct {v1, p0}, Lcom/northpolewonderland/santagram/Login$3;-><init>(Lcom/northpolewonderland/santagram/Login;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
