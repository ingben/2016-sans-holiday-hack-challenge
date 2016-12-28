.class Lcom/northpolewonderland/santagram/PostDetails$3$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/parse/SaveCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/northpolewonderland/santagram/PostDetails$3$1;->done(Ljava/util/List;Lcom/parse/ParseException;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/northpolewonderland/santagram/PostDetails$3$1;


# direct methods
.method constructor <init>(Lcom/northpolewonderland/santagram/PostDetails$3$1;)V
    .locals 0

    iput-object p1, p0, Lcom/northpolewonderland/santagram/PostDetails$3$1$1;->a:Lcom/northpolewonderland/santagram/PostDetails$3$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public done(Lcom/parse/ParseException;)V
    .locals 4

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/northpolewonderland/santagram/PostDetails$3$1$1;->a:Lcom/northpolewonderland/santagram/PostDetails$3$1;

    iget-object v0, v0, Lcom/northpolewonderland/santagram/PostDetails$3$1;->a:Lcom/northpolewonderland/santagram/PostDetails$3;

    iget-object v0, v0, Lcom/northpolewonderland/santagram/PostDetails$3;->a:Lcom/northpolewonderland/santagram/PostDetails;

    iget-object v0, v0, Lcom/northpolewonderland/santagram/PostDetails;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    new-instance v0, Landroid/support/v7/a/d$a;

    iget-object v1, p0, Lcom/northpolewonderland/santagram/PostDetails$3$1$1;->a:Lcom/northpolewonderland/santagram/PostDetails$3$1;

    iget-object v1, v1, Lcom/northpolewonderland/santagram/PostDetails$3$1;->a:Lcom/northpolewonderland/santagram/PostDetails$3;

    iget-object v1, v1, Lcom/northpolewonderland/santagram/PostDetails$3;->a:Lcom/northpolewonderland/santagram/PostDetails;

    invoke-direct {v0, v1}, Landroid/support/v7/a/d$a;-><init>(Landroid/content/Context;)V

    const-string v1, "You\'ve liked this post!"

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

    iget-object v0, p0, Lcom/northpolewonderland/santagram/PostDetails$3$1$1;->a:Lcom/northpolewonderland/santagram/PostDetails$3$1;

    iget-object v0, v0, Lcom/northpolewonderland/santagram/PostDetails$3$1;->a:Lcom/northpolewonderland/santagram/PostDetails$3;

    iget-object v0, v0, Lcom/northpolewonderland/santagram/PostDetails$3;->a:Lcom/northpolewonderland/santagram/PostDetails;

    iget-object v0, v0, Lcom/northpolewonderland/santagram/PostDetails;->likeButt:Landroid/widget/Button;

    const v1, 0x7f020054

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/northpolewonderland/santagram/PostDetails$3$1$1;->a:Lcom/northpolewonderland/santagram/PostDetails$3$1;

    iget-object v0, v0, Lcom/northpolewonderland/santagram/PostDetails$3$1;->a:Lcom/northpolewonderland/santagram/PostDetails$3;

    iget-object v0, v0, Lcom/northpolewonderland/santagram/PostDetails$3;->a:Lcom/northpolewonderland/santagram/PostDetails;

    iget-object v0, v0, Lcom/northpolewonderland/santagram/PostDetails;->postObj:Lcom/parse/ParseObject;

    sget-object v1, Lcom/northpolewonderland/santagram/Configs;->POSTS_USER_POINTER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/parse/ParseObject;->getParseUser(Ljava/lang/String;)Lcom/parse/ParseUser;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/northpolewonderland/santagram/PostDetails$3$1$1;->a:Lcom/northpolewonderland/santagram/PostDetails$3$1;

    iget-object v2, v2, Lcom/northpolewonderland/santagram/PostDetails$3$1;->a:Lcom/northpolewonderland/santagram/PostDetails$3;

    iget-object v2, v2, Lcom/northpolewonderland/santagram/PostDetails$3;->a:Lcom/northpolewonderland/santagram/PostDetails;

    iget-object v2, v2, Lcom/northpolewonderland/santagram/PostDetails;->currUser:Lcom/parse/ParseUser;

    sget-object v3, Lcom/northpolewonderland/santagram/Configs;->USER_FULLNAME:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/parse/ParseUser;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " liked your post: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/northpolewonderland/santagram/PostDetails$3$1$1;->a:Lcom/northpolewonderland/santagram/PostDetails$3$1;

    iget-object v2, v2, Lcom/northpolewonderland/santagram/PostDetails$3$1;->a:Lcom/northpolewonderland/santagram/PostDetails$3;

    iget-object v2, v2, Lcom/northpolewonderland/santagram/PostDetails$3;->a:Lcom/northpolewonderland/santagram/PostDetails;

    iget-object v2, v2, Lcom/northpolewonderland/santagram/PostDetails;->postObj:Lcom/parse/ParseObject;

    sget-object v3, Lcom/northpolewonderland/santagram/Configs;->POSTS_TEXT:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/parse/ParseObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/parse/ParseObject;

    sget-object v3, Lcom/northpolewonderland/santagram/Configs;->ACTIVITY_CLASS_NAME:Ljava/lang/String;

    invoke-direct {v2, v3}, Lcom/parse/ParseObject;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/northpolewonderland/santagram/Configs;->ACTIVITY_CURRENT_USER:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Lcom/parse/ParseObject;->put(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lcom/northpolewonderland/santagram/Configs;->ACTIVITY_OTHER_USER:Ljava/lang/String;

    iget-object v3, p0, Lcom/northpolewonderland/santagram/PostDetails$3$1$1;->a:Lcom/northpolewonderland/santagram/PostDetails$3$1;

    iget-object v3, v3, Lcom/northpolewonderland/santagram/PostDetails$3$1;->a:Lcom/northpolewonderland/santagram/PostDetails$3;

    iget-object v3, v3, Lcom/northpolewonderland/santagram/PostDetails$3;->a:Lcom/northpolewonderland/santagram/PostDetails;

    iget-object v3, v3, Lcom/northpolewonderland/santagram/PostDetails;->currUser:Lcom/parse/ParseUser;

    invoke-virtual {v2, v0, v3}, Lcom/parse/ParseObject;->put(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lcom/northpolewonderland/santagram/Configs;->ACTIVITY_TEXT:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Lcom/parse/ParseObject;->put(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/parse/ParseObject;->saveInBackground()La/j;

    :cond_0
    return-void
.end method

.method public bridge synthetic done(Ljava/lang/Throwable;)V
    .locals 0

    check-cast p1, Lcom/parse/ParseException;

    invoke-virtual {p0, p1}, Lcom/northpolewonderland/santagram/PostDetails$3$1$1;->done(Lcom/parse/ParseException;)V

    return-void
.end method
