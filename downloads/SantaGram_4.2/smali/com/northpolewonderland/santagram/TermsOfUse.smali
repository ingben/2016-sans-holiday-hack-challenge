.class public Lcom/northpolewonderland/santagram/TermsOfUse;
.super Landroid/support/v7/a/e;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v7/a/e;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    const/4 v2, 0x1

    invoke-super {p0, p1}, Landroid/support/v7/a/e;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f040042

    invoke-virtual {p0, v0}, Lcom/northpolewonderland/santagram/TermsOfUse;->setContentView(I)V

    invoke-super {p0, v2}, Landroid/support/v7/a/e;->setRequestedOrientation(I)V

    invoke-virtual {p0}, Lcom/northpolewonderland/santagram/TermsOfUse;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/northpolewonderland/santagram/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/northpolewonderland/santagram/TermsOfUse;->getSupportActionBar()Landroid/support/v7/a/a;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v7/a/a;->a(Z)V

    invoke-virtual {p0}, Lcom/northpolewonderland/santagram/TermsOfUse;->getSupportActionBar()Landroid/support/v7/a/a;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v7/a/a;->b(Z)V

    invoke-virtual {p0}, Lcom/northpolewonderland/santagram/TermsOfUse;->getSupportActionBar()Landroid/support/v7/a/a;

    move-result-object v0

    const-string v1, "Terms of Use"

    invoke-virtual {v0, v1}, Landroid/support/v7/a/a;->a(Ljava/lang/CharSequence;)V

    const v0, 0x7f0d00e8

    invoke-virtual {p0, v0}, Lcom/northpolewonderland/santagram/TermsOfUse;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    const-string v1, "file:///android_asset/tou.html"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

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
    invoke-virtual {p0}, Lcom/northpolewonderland/santagram/TermsOfUse;->finish()V

    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
