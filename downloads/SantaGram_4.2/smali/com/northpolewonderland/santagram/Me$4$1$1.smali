.class Lcom/northpolewonderland/santagram/Me$4$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/parse/GetCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/northpolewonderland/santagram/Me$4$1;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/parse/GetCallback",
        "<",
        "Lcom/parse/ParseObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/northpolewonderland/santagram/Me$4$1;


# direct methods
.method constructor <init>(Lcom/northpolewonderland/santagram/Me$4$1;)V
    .locals 0

    iput-object p1, p0, Lcom/northpolewonderland/santagram/Me$4$1$1;->a:Lcom/northpolewonderland/santagram/Me$4$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public done(Lcom/parse/ParseObject;Lcom/parse/ParseException;)V
    .locals 4

    sget-object v0, Lcom/northpolewonderland/santagram/Configs;->POSTS_IS_REPORTED:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/parse/ParseObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/northpolewonderland/santagram/Me$4$1$1;->a:Lcom/northpolewonderland/santagram/Me$4$1;

    iget-object v1, v1, Lcom/northpolewonderland/santagram/Me$4$1;->a:Lcom/northpolewonderland/santagram/Me$4;

    iget-object v1, v1, Lcom/northpolewonderland/santagram/Me$4;->a:Lcom/northpolewonderland/santagram/Me;

    const-class v2, Lcom/northpolewonderland/santagram/PostDetails;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "objectID"

    invoke-virtual {p1}, Lcom/parse/ParseObject;->getObjectId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/northpolewonderland/santagram/Me$4$1$1;->a:Lcom/northpolewonderland/santagram/Me$4$1;

    iget-object v1, v1, Lcom/northpolewonderland/santagram/Me$4$1;->a:Lcom/northpolewonderland/santagram/Me$4;

    iget-object v1, v1, Lcom/northpolewonderland/santagram/Me$4;->a:Lcom/northpolewonderland/santagram/Me;

    invoke-virtual {v1, v0}, Lcom/northpolewonderland/santagram/Me;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/support/v7/a/d$a;

    iget-object v1, p0, Lcom/northpolewonderland/santagram/Me$4$1$1;->a:Lcom/northpolewonderland/santagram/Me$4$1;

    iget-object v1, v1, Lcom/northpolewonderland/santagram/Me$4$1;->a:Lcom/northpolewonderland/santagram/Me$4;

    iget-object v1, v1, Lcom/northpolewonderland/santagram/Me$4;->a:Lcom/northpolewonderland/santagram/Me;

    invoke-direct {v0, v1}, Landroid/support/v7/a/d$a;-><init>(Landroid/content/Context;)V

    const-string v1, "This post has been reported, you can\'t access it!"

    invoke-virtual {v0, v1}, Landroid/support/v7/a/d$a;->b(Ljava/lang/CharSequence;)Landroid/support/v7/a/d$a;

    move-result-object v1

    const v2, 0x7f070018

    invoke-virtual {v1, v2}, Landroid/support/v7/a/d$a;->a(I)Landroid/support/v7/a/d$a;

    move-result-object v1

    const-string v2, "OK"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/support/v7/a/d$a;->a(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/a/d$a;

    move-result-object v1

    const v2, 0x7f020058

    invoke-virtual {v1, v2}, Landroid/support/v7/a/d$a;->b(I)Landroid/support/v7/a/d$a;

    invoke-virtual {v0}, Landroid/support/v7/a/d$a;->b()Landroid/support/v7/a/d;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/a/d;->show()V

    goto :goto_0
.end method

.method public bridge synthetic done(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0

    check-cast p1, Lcom/parse/ParseObject;

    check-cast p2, Lcom/parse/ParseException;

    invoke-virtual {p0, p1, p2}, Lcom/northpolewonderland/santagram/Me$4$1$1;->done(Lcom/parse/ParseObject;Lcom/parse/ParseException;)V

    return-void
.end method
