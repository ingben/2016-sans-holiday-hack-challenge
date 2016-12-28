.class Lcom/northpolewonderland/santagram/PostDetails$3$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/parse/FindCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/northpolewonderland/santagram/PostDetails$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/parse/FindCallback",
        "<",
        "Lcom/parse/ParseObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/northpolewonderland/santagram/PostDetails$3;


# direct methods
.method constructor <init>(Lcom/northpolewonderland/santagram/PostDetails$3;)V
    .locals 0

    iput-object p1, p0, Lcom/northpolewonderland/santagram/PostDetails$3$1;->a:Lcom/northpolewonderland/santagram/PostDetails$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic done(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    check-cast p2, Lcom/parse/ParseException;

    invoke-virtual {p0, p1, p2}, Lcom/northpolewonderland/santagram/PostDetails$3$1;->done(Ljava/util/List;Lcom/parse/ParseException;)V

    return-void
.end method

.method public done(Ljava/util/List;Lcom/parse/ParseException;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/parse/ParseObject;",
            ">;",
            "Lcom/parse/ParseException;",
            ")V"
        }
    .end annotation

    const v4, 0x7f0d00d7

    const/4 v3, 0x1

    if-nez p2, :cond_1

    iget-object v0, p0, Lcom/northpolewonderland/santagram/PostDetails$3$1;->a:Lcom/northpolewonderland/santagram/PostDetails$3;

    iget-object v0, v0, Lcom/northpolewonderland/santagram/PostDetails$3;->a:Lcom/northpolewonderland/santagram/PostDetails;

    iput-object p1, v0, Lcom/northpolewonderland/santagram/PostDetails;->likesArray:Ljava/util/List;

    new-instance v2, Lcom/parse/ParseObject;

    sget-object v0, Lcom/northpolewonderland/santagram/Configs;->LIKES_CLASS_NAME:Ljava/lang/String;

    invoke-direct {v2, v0}, Lcom/parse/ParseObject;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/northpolewonderland/santagram/PostDetails$3$1;->a:Lcom/northpolewonderland/santagram/PostDetails$3;

    iget-object v0, v0, Lcom/northpolewonderland/santagram/PostDetails$3;->a:Lcom/northpolewonderland/santagram/PostDetails;

    iget-object v0, v0, Lcom/northpolewonderland/santagram/PostDetails;->likesArray:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/northpolewonderland/santagram/PostDetails$3$1;->a:Lcom/northpolewonderland/santagram/PostDetails$3;

    iget-object v0, v0, Lcom/northpolewonderland/santagram/PostDetails$3;->a:Lcom/northpolewonderland/santagram/PostDetails;

    iget-object v0, v0, Lcom/northpolewonderland/santagram/PostDetails;->pd:Landroid/app/ProgressDialog;

    const-string v1, "Liking post..."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/northpolewonderland/santagram/PostDetails$3$1;->a:Lcom/northpolewonderland/santagram/PostDetails$3;

    iget-object v0, v0, Lcom/northpolewonderland/santagram/PostDetails$3;->a:Lcom/northpolewonderland/santagram/PostDetails;

    iget-object v0, v0, Lcom/northpolewonderland/santagram/PostDetails;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    iget-object v0, p0, Lcom/northpolewonderland/santagram/PostDetails$3$1;->a:Lcom/northpolewonderland/santagram/PostDetails$3;

    iget-object v0, v0, Lcom/northpolewonderland/santagram/PostDetails$3;->a:Lcom/northpolewonderland/santagram/PostDetails;

    iget-object v0, v0, Lcom/northpolewonderland/santagram/PostDetails;->postObj:Lcom/parse/ParseObject;

    sget-object v1, Lcom/northpolewonderland/santagram/Configs;->POSTS_LIKES:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/parse/ParseObject;->increment(Ljava/lang/String;Ljava/lang/Number;)V

    iget-object v0, p0, Lcom/northpolewonderland/santagram/PostDetails$3$1;->a:Lcom/northpolewonderland/santagram/PostDetails$3;

    iget-object v0, v0, Lcom/northpolewonderland/santagram/PostDetails$3;->a:Lcom/northpolewonderland/santagram/PostDetails;

    iget-object v0, v0, Lcom/northpolewonderland/santagram/PostDetails;->postObj:Lcom/parse/ParseObject;

    invoke-virtual {v0}, Lcom/parse/ParseObject;->saveInBackground()La/j;

    iget-object v0, p0, Lcom/northpolewonderland/santagram/PostDetails$3$1;->a:Lcom/northpolewonderland/santagram/PostDetails$3;

    iget-object v0, v0, Lcom/northpolewonderland/santagram/PostDetails$3;->a:Lcom/northpolewonderland/santagram/PostDetails;

    invoke-virtual {v0, v4}, Lcom/northpolewonderland/santagram/PostDetails;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/northpolewonderland/santagram/PostDetails$3$1;->a:Lcom/northpolewonderland/santagram/PostDetails$3;

    iget-object v1, v1, Lcom/northpolewonderland/santagram/PostDetails$3;->a:Lcom/northpolewonderland/santagram/PostDetails;

    iget-object v1, v1, Lcom/northpolewonderland/santagram/PostDetails;->postObj:Lcom/parse/ParseObject;

    sget-object v3, Lcom/northpolewonderland/santagram/Configs;->POSTS_LIKES:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/parse/ParseObject;->getNumber(Ljava/lang/String;)Ljava/lang/Number;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/northpolewonderland/santagram/Configs;->LIKES_LIKED_BY:Ljava/lang/String;

    iget-object v1, p0, Lcom/northpolewonderland/santagram/PostDetails$3$1;->a:Lcom/northpolewonderland/santagram/PostDetails$3;

    iget-object v1, v1, Lcom/northpolewonderland/santagram/PostDetails$3;->a:Lcom/northpolewonderland/santagram/PostDetails;

    iget-object v1, v1, Lcom/northpolewonderland/santagram/PostDetails;->currUser:Lcom/parse/ParseUser;

    invoke-virtual {v2, v0, v1}, Lcom/parse/ParseObject;->put(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lcom/northpolewonderland/santagram/Configs;->LIKES_POST_LIKED:Ljava/lang/String;

    iget-object v1, p0, Lcom/northpolewonderland/santagram/PostDetails$3$1;->a:Lcom/northpolewonderland/santagram/PostDetails$3;

    iget-object v1, v1, Lcom/northpolewonderland/santagram/PostDetails$3;->a:Lcom/northpolewonderland/santagram/PostDetails;

    iget-object v1, v1, Lcom/northpolewonderland/santagram/PostDetails;->postObj:Lcom/parse/ParseObject;

    invoke-virtual {v2, v0, v1}, Lcom/parse/ParseObject;->put(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, Lcom/northpolewonderland/santagram/PostDetails$3$1$1;

    invoke-direct {v0, p0}, Lcom/northpolewonderland/santagram/PostDetails$3$1$1;-><init>(Lcom/northpolewonderland/santagram/PostDetails$3$1;)V

    invoke-virtual {v2, v0}, Lcom/parse/ParseObject;->saveInBackground(Lcom/parse/SaveCallback;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/northpolewonderland/santagram/PostDetails$3$1;->a:Lcom/northpolewonderland/santagram/PostDetails$3;

    iget-object v0, v0, Lcom/northpolewonderland/santagram/PostDetails$3;->a:Lcom/northpolewonderland/santagram/PostDetails;

    iget-object v0, v0, Lcom/northpolewonderland/santagram/PostDetails;->pd:Landroid/app/ProgressDialog;

    const-string v1, "Unliking post..."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/northpolewonderland/santagram/PostDetails$3$1;->a:Lcom/northpolewonderland/santagram/PostDetails$3;

    iget-object v0, v0, Lcom/northpolewonderland/santagram/PostDetails$3;->a:Lcom/northpolewonderland/santagram/PostDetails;

    iget-object v0, v0, Lcom/northpolewonderland/santagram/PostDetails;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    iget-object v0, p0, Lcom/northpolewonderland/santagram/PostDetails$3$1;->a:Lcom/northpolewonderland/santagram/PostDetails$3;

    iget-object v0, v0, Lcom/northpolewonderland/santagram/PostDetails$3;->a:Lcom/northpolewonderland/santagram/PostDetails;

    iget-object v0, v0, Lcom/northpolewonderland/santagram/PostDetails;->postObj:Lcom/parse/ParseObject;

    sget-object v1, Lcom/northpolewonderland/santagram/Configs;->POSTS_LIKES:Ljava/lang/String;

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/parse/ParseObject;->increment(Ljava/lang/String;Ljava/lang/Number;)V

    iget-object v0, p0, Lcom/northpolewonderland/santagram/PostDetails$3$1;->a:Lcom/northpolewonderland/santagram/PostDetails$3;

    iget-object v0, v0, Lcom/northpolewonderland/santagram/PostDetails$3;->a:Lcom/northpolewonderland/santagram/PostDetails;

    iget-object v0, v0, Lcom/northpolewonderland/santagram/PostDetails;->postObj:Lcom/parse/ParseObject;

    invoke-virtual {v0}, Lcom/parse/ParseObject;->saveInBackground()La/j;

    iget-object v0, p0, Lcom/northpolewonderland/santagram/PostDetails$3$1;->a:Lcom/northpolewonderland/santagram/PostDetails$3;

    iget-object v0, v0, Lcom/northpolewonderland/santagram/PostDetails$3;->a:Lcom/northpolewonderland/santagram/PostDetails;

    invoke-virtual {v0, v4}, Lcom/northpolewonderland/santagram/PostDetails;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/northpolewonderland/santagram/PostDetails$3$1;->a:Lcom/northpolewonderland/santagram/PostDetails$3;

    iget-object v1, v1, Lcom/northpolewonderland/santagram/PostDetails$3;->a:Lcom/northpolewonderland/santagram/PostDetails;

    iget-object v1, v1, Lcom/northpolewonderland/santagram/PostDetails;->postObj:Lcom/parse/ParseObject;

    sget-object v2, Lcom/northpolewonderland/santagram/Configs;->POSTS_LIKES:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/parse/ParseObject;->getNumber(Ljava/lang/String;)Ljava/lang/Number;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/northpolewonderland/santagram/PostDetails$3$1;->a:Lcom/northpolewonderland/santagram/PostDetails$3;

    iget-object v0, v0, Lcom/northpolewonderland/santagram/PostDetails$3;->a:Lcom/northpolewonderland/santagram/PostDetails;

    iget-object v0, v0, Lcom/northpolewonderland/santagram/PostDetails;->likesArray:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseObject;

    new-instance v1, Lcom/northpolewonderland/santagram/PostDetails$3$1$2;

    invoke-direct {v1, p0}, Lcom/northpolewonderland/santagram/PostDetails$3$1$2;-><init>(Lcom/northpolewonderland/santagram/PostDetails$3$1;)V

    invoke-virtual {v0, v1}, Lcom/parse/ParseObject;->deleteInBackground(Lcom/parse/DeleteCallback;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/northpolewonderland/santagram/PostDetails$3$1;->a:Lcom/northpolewonderland/santagram/PostDetails$3;

    iget-object v0, v0, Lcom/northpolewonderland/santagram/PostDetails$3;->a:Lcom/northpolewonderland/santagram/PostDetails;

    invoke-virtual {v0}, Lcom/northpolewonderland/santagram/PostDetails;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p2}, Lcom/parse/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
