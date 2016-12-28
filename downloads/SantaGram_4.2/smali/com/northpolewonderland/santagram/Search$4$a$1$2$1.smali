.class Lcom/northpolewonderland/santagram/Search$4$a$1$2$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/parse/GetCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/northpolewonderland/santagram/Search$4$a$1$2;->onClick(Landroid/view/View;)V
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
.field final synthetic a:Lcom/northpolewonderland/santagram/Search$4$a$1$2;


# direct methods
.method constructor <init>(Lcom/northpolewonderland/santagram/Search$4$a$1$2;)V
    .locals 0

    iput-object p1, p0, Lcom/northpolewonderland/santagram/Search$4$a$1$2$1;->a:Lcom/northpolewonderland/santagram/Search$4$a$1$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public done(Lcom/parse/ParseObject;Lcom/parse/ParseException;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/northpolewonderland/santagram/Search$4$a$1$2$1;->a:Lcom/northpolewonderland/santagram/Search$4$a$1$2;

    iget-object v1, v1, Lcom/northpolewonderland/santagram/Search$4$a$1$2;->a:Lcom/northpolewonderland/santagram/Search$4$a$1;

    iget-object v1, v1, Lcom/northpolewonderland/santagram/Search$4$a$1;->c:Lcom/northpolewonderland/santagram/Search$4$a;

    iget-object v1, v1, Lcom/northpolewonderland/santagram/Search$4$a;->a:Lcom/northpolewonderland/santagram/Search$4;

    iget-object v1, v1, Lcom/northpolewonderland/santagram/Search$4;->a:Lcom/northpolewonderland/santagram/Search;

    const-class v2, Lcom/northpolewonderland/santagram/OtherUserProfile;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "objectID"

    invoke-virtual {p1}, Lcom/parse/ParseObject;->getObjectId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/northpolewonderland/santagram/Search$4$a$1$2$1;->a:Lcom/northpolewonderland/santagram/Search$4$a$1$2;

    iget-object v1, v1, Lcom/northpolewonderland/santagram/Search$4$a$1$2;->a:Lcom/northpolewonderland/santagram/Search$4$a$1;

    iget-object v1, v1, Lcom/northpolewonderland/santagram/Search$4$a$1;->c:Lcom/northpolewonderland/santagram/Search$4$a;

    iget-object v1, v1, Lcom/northpolewonderland/santagram/Search$4$a;->a:Lcom/northpolewonderland/santagram/Search$4;

    iget-object v1, v1, Lcom/northpolewonderland/santagram/Search$4;->a:Lcom/northpolewonderland/santagram/Search;

    invoke-virtual {v1, v0}, Lcom/northpolewonderland/santagram/Search;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public bridge synthetic done(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0

    check-cast p1, Lcom/parse/ParseObject;

    check-cast p2, Lcom/parse/ParseException;

    invoke-virtual {p0, p1, p2}, Lcom/northpolewonderland/santagram/Search$4$a$1$2$1;->done(Lcom/parse/ParseObject;Lcom/parse/ParseException;)V

    return-void
.end method
