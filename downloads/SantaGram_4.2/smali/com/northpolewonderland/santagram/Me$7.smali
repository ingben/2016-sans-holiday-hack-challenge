.class Lcom/northpolewonderland/santagram/Me$7;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/parse/LogOutCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/northpolewonderland/santagram/Me;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/northpolewonderland/santagram/Me;


# direct methods
.method constructor <init>(Lcom/northpolewonderland/santagram/Me;)V
    .locals 0

    iput-object p1, p0, Lcom/northpolewonderland/santagram/Me$7;->a:Lcom/northpolewonderland/santagram/Me;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public done(Lcom/parse/ParseException;)V
    .locals 4

    iget-object v0, p0, Lcom/northpolewonderland/santagram/Me$7;->a:Lcom/northpolewonderland/santagram/Me;

    iget-object v0, v0, Lcom/northpolewonderland/santagram/Me;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    iget-object v0, p0, Lcom/northpolewonderland/santagram/Me$7;->a:Lcom/northpolewonderland/santagram/Me;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/northpolewonderland/santagram/Me$7;->a:Lcom/northpolewonderland/santagram/Me;

    const-class v3, Lcom/northpolewonderland/santagram/Login;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/northpolewonderland/santagram/Me;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public bridge synthetic done(Ljava/lang/Throwable;)V
    .locals 0

    check-cast p1, Lcom/parse/ParseException;

    invoke-virtual {p0, p1}, Lcom/northpolewonderland/santagram/Me$7;->done(Lcom/parse/ParseException;)V

    return-void
.end method
