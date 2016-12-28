.class Lcom/northpolewonderland/santagram/Search$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/northpolewonderland/santagram/Search;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/northpolewonderland/santagram/Search;


# direct methods
.method constructor <init>(Lcom/northpolewonderland/santagram/Search;)V
    .locals 0

    iput-object p1, p0, Lcom/northpolewonderland/santagram/Search$1;->a:Lcom/northpolewonderland/santagram/Search;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/northpolewonderland/santagram/Search$1;->a:Lcom/northpolewonderland/santagram/Search;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/northpolewonderland/santagram/Search$1;->a:Lcom/northpolewonderland/santagram/Search;

    const-class v3, Lcom/northpolewonderland/santagram/Home;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/northpolewonderland/santagram/Search;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
