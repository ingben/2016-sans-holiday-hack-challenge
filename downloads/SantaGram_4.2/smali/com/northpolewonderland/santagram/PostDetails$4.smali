.class Lcom/northpolewonderland/santagram/PostDetails$4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/northpolewonderland/santagram/PostDetails;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/northpolewonderland/santagram/PostDetails;


# direct methods
.method constructor <init>(Lcom/northpolewonderland/santagram/PostDetails;)V
    .locals 0

    iput-object p1, p0, Lcom/northpolewonderland/santagram/PostDetails$4;->a:Lcom/northpolewonderland/santagram/PostDetails;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/northpolewonderland/santagram/PostDetails$4;->a:Lcom/northpolewonderland/santagram/PostDetails;

    const-class v2, Lcom/northpolewonderland/santagram/Comments;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "objectID"

    iget-object v2, p0, Lcom/northpolewonderland/santagram/PostDetails$4;->a:Lcom/northpolewonderland/santagram/PostDetails;

    iget-object v2, v2, Lcom/northpolewonderland/santagram/PostDetails;->postObj:Lcom/parse/ParseObject;

    invoke-virtual {v2}, Lcom/parse/ParseObject;->getObjectId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/northpolewonderland/santagram/PostDetails$4;->a:Lcom/northpolewonderland/santagram/PostDetails;

    invoke-virtual {v1, v0}, Lcom/northpolewonderland/santagram/PostDetails;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
