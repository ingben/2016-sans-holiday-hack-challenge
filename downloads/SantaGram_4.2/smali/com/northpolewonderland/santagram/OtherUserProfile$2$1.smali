.class Lcom/northpolewonderland/santagram/OtherUserProfile$2$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/parse/FunctionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/northpolewonderland/santagram/OtherUserProfile$2;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/parse/FunctionCallback",
        "<",
        "Lcom/parse/ParseUser;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/northpolewonderland/santagram/OtherUserProfile$2;


# direct methods
.method constructor <init>(Lcom/northpolewonderland/santagram/OtherUserProfile$2;)V
    .locals 0

    iput-object p1, p0, Lcom/northpolewonderland/santagram/OtherUserProfile$2$1;->a:Lcom/northpolewonderland/santagram/OtherUserProfile$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/parse/ParseUser;Lcom/parse/ParseException;)V
    .locals 4

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/northpolewonderland/santagram/OtherUserProfile$2$1;->a:Lcom/northpolewonderland/santagram/OtherUserProfile$2;

    iget-object v0, v0, Lcom/northpolewonderland/santagram/OtherUserProfile$2;->b:Lcom/northpolewonderland/santagram/OtherUserProfile;

    iget-object v0, v0, Lcom/northpolewonderland/santagram/OtherUserProfile;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    sget-object v0, Lcom/northpolewonderland/santagram/Configs;->POSTS_CLASSE_NAME:Ljava/lang/String;

    invoke-static {v0}, Lcom/parse/ParseQuery;->getQuery(Ljava/lang/String;)Lcom/parse/ParseQuery;

    move-result-object v0

    sget-object v1, Lcom/northpolewonderland/santagram/Configs;->POSTS_USER_POINTER:Ljava/lang/String;

    iget-object v2, p0, Lcom/northpolewonderland/santagram/OtherUserProfile$2$1;->a:Lcom/northpolewonderland/santagram/OtherUserProfile$2;

    iget-object v2, v2, Lcom/northpolewonderland/santagram/OtherUserProfile$2;->b:Lcom/northpolewonderland/santagram/OtherUserProfile;

    iget-object v2, v2, Lcom/northpolewonderland/santagram/OtherUserProfile;->userObj:Lcom/parse/ParseObject;

    invoke-virtual {v0, v1, v2}, Lcom/parse/ParseQuery;->whereEqualTo(Ljava/lang/String;Ljava/lang/Object;)Lcom/parse/ParseQuery;

    new-instance v1, Lcom/northpolewonderland/santagram/OtherUserProfile$2$1$1;

    invoke-direct {v1, p0}, Lcom/northpolewonderland/santagram/OtherUserProfile$2$1$1;-><init>(Lcom/northpolewonderland/santagram/OtherUserProfile$2$1;)V

    invoke-virtual {v0, v1}, Lcom/parse/ParseQuery;->findInBackground(Lcom/parse/FindCallback;)V

    new-instance v0, Landroid/support/v7/a/d$a;

    iget-object v1, p0, Lcom/northpolewonderland/santagram/OtherUserProfile$2$1;->a:Lcom/northpolewonderland/santagram/OtherUserProfile$2;

    iget-object v1, v1, Lcom/northpolewonderland/santagram/OtherUserProfile$2;->b:Lcom/northpolewonderland/santagram/OtherUserProfile;

    invoke-direct {v0, v1}, Landroid/support/v7/a/d$a;-><init>(Landroid/content/Context;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Thanks for reporting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/northpolewonderland/santagram/OtherUserProfile$2$1;->a:Lcom/northpolewonderland/santagram/OtherUserProfile$2;

    iget-object v2, v2, Lcom/northpolewonderland/santagram/OtherUserProfile$2;->b:Lcom/northpolewonderland/santagram/OtherUserProfile;

    iget-object v2, v2, Lcom/northpolewonderland/santagram/OtherUserProfile;->userObj:Lcom/parse/ParseObject;

    sget-object v3, Lcom/northpolewonderland/santagram/Configs;->USER_FULLNAME:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/parse/ParseObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". We\'ll check it out within 24h."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/a/d$a;->b(Ljava/lang/CharSequence;)Landroid/support/v7/a/d$a;

    move-result-object v1

    const v2, 0x7f070018

    invoke-virtual {v1, v2}, Landroid/support/v7/a/d$a;->a(I)Landroid/support/v7/a/d$a;

    move-result-object v1

    const-string v2, "OK"

    new-instance v3, Lcom/northpolewonderland/santagram/OtherUserProfile$2$1$2;

    invoke-direct {v3, p0}, Lcom/northpolewonderland/santagram/OtherUserProfile$2$1$2;-><init>(Lcom/northpolewonderland/santagram/OtherUserProfile$2$1;)V

    invoke-virtual {v1, v2, v3}, Landroid/support/v7/a/d$a;->a(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/a/d$a;

    move-result-object v1

    const v2, 0x7f020058

    invoke-virtual {v1, v2}, Landroid/support/v7/a/d$a;->b(I)Landroid/support/v7/a/d$a;

    invoke-virtual {v0}, Landroid/support/v7/a/d$a;->b()Landroid/support/v7/a/d;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/a/d;->show()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/northpolewonderland/santagram/OtherUserProfile$2$1;->a:Lcom/northpolewonderland/santagram/OtherUserProfile$2;

    iget-object v0, v0, Lcom/northpolewonderland/santagram/OtherUserProfile$2;->b:Lcom/northpolewonderland/santagram/OtherUserProfile;

    invoke-virtual {v0}, Lcom/northpolewonderland/santagram/OtherUserProfile;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p2}, Lcom/parse/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/northpolewonderland/santagram/OtherUserProfile$2$1;->a:Lcom/northpolewonderland/santagram/OtherUserProfile$2;

    iget-object v0, v0, Lcom/northpolewonderland/santagram/OtherUserProfile$2;->b:Lcom/northpolewonderland/santagram/OtherUserProfile;

    iget-object v0, v0, Lcom/northpolewonderland/santagram/OtherUserProfile;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    goto :goto_0
.end method

.method public synthetic done(Ljava/lang/Object;Lcom/parse/ParseException;)V
    .locals 0

    check-cast p1, Lcom/parse/ParseUser;

    invoke-virtual {p0, p1, p2}, Lcom/northpolewonderland/santagram/OtherUserProfile$2$1;->a(Lcom/parse/ParseUser;Lcom/parse/ParseException;)V

    return-void
.end method

.method public synthetic done(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0

    check-cast p1, Lcom/parse/ParseUser;

    check-cast p2, Lcom/parse/ParseException;

    invoke-virtual {p0, p1, p2}, Lcom/northpolewonderland/santagram/OtherUserProfile$2$1;->a(Lcom/parse/ParseUser;Lcom/parse/ParseException;)V

    return-void
.end method
