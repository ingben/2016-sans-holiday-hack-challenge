.class Lcom/northpolewonderland/santagram/Follow$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/parse/FindCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/northpolewonderland/santagram/Follow;->onCreate(Landroid/os/Bundle;)V
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
.field final synthetic a:Lcom/northpolewonderland/santagram/Follow;


# direct methods
.method constructor <init>(Lcom/northpolewonderland/santagram/Follow;)V
    .locals 0

    iput-object p1, p0, Lcom/northpolewonderland/santagram/Follow$1;->a:Lcom/northpolewonderland/santagram/Follow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic done(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    check-cast p2, Lcom/parse/ParseException;

    invoke-virtual {p0, p1, p2}, Lcom/northpolewonderland/santagram/Follow$1;->done(Ljava/util/List;Lcom/parse/ParseException;)V

    return-void
.end method

.method public done(Ljava/util/List;Lcom/parse/ParseException;)V
    .locals 3
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

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/northpolewonderland/santagram/Follow$1;->a:Lcom/northpolewonderland/santagram/Follow;

    iput-object p1, v0, Lcom/northpolewonderland/santagram/Follow;->b:Ljava/util/List;

    iget-object v0, p0, Lcom/northpolewonderland/santagram/Follow$1;->a:Lcom/northpolewonderland/santagram/Follow;

    iget-object v0, v0, Lcom/northpolewonderland/santagram/Follow;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    iget-object v0, p0, Lcom/northpolewonderland/santagram/Follow$1;->a:Lcom/northpolewonderland/santagram/Follow;

    invoke-virtual {v0}, Lcom/northpolewonderland/santagram/Follow;->a()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/northpolewonderland/santagram/Follow$1;->a:Lcom/northpolewonderland/santagram/Follow;

    invoke-virtual {v0}, Lcom/northpolewonderland/santagram/Follow;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p2}, Lcom/parse/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/northpolewonderland/santagram/Follow$1;->a:Lcom/northpolewonderland/santagram/Follow;

    iget-object v0, v0, Lcom/northpolewonderland/santagram/Follow;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    goto :goto_0
.end method
