.class Lcom/northpolewonderland/santagram/PostDetails$5$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/parse/SaveCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/northpolewonderland/santagram/PostDetails$5$1;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/northpolewonderland/santagram/PostDetails$5$1;


# direct methods
.method constructor <init>(Lcom/northpolewonderland/santagram/PostDetails$5$1;)V
    .locals 0

    iput-object p1, p0, Lcom/northpolewonderland/santagram/PostDetails$5$1$1;->a:Lcom/northpolewonderland/santagram/PostDetails$5$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public done(Lcom/parse/ParseException;)V
    .locals 4

    if-nez p1, :cond_0

    new-instance v0, Landroid/support/v7/a/d$a;

    iget-object v1, p0, Lcom/northpolewonderland/santagram/PostDetails$5$1$1;->a:Lcom/northpolewonderland/santagram/PostDetails$5$1;

    iget-object v1, v1, Lcom/northpolewonderland/santagram/PostDetails$5$1;->b:Lcom/northpolewonderland/santagram/PostDetails$5;

    iget-object v1, v1, Lcom/northpolewonderland/santagram/PostDetails$5;->a:Lcom/northpolewonderland/santagram/PostDetails;

    invoke-direct {v0, v1}, Landroid/support/v7/a/d$a;-><init>(Landroid/content/Context;)V

    const-string v1, "Thanks for reporting this post!\nWe\'ll check it out within 24 hours."

    invoke-virtual {v0, v1}, Landroid/support/v7/a/d$a;->b(Ljava/lang/CharSequence;)Landroid/support/v7/a/d$a;

    move-result-object v1

    const v2, 0x7f070018

    invoke-virtual {v1, v2}, Landroid/support/v7/a/d$a;->a(I)Landroid/support/v7/a/d$a;

    move-result-object v1

    const v2, 0x7f020058

    invoke-virtual {v1, v2}, Landroid/support/v7/a/d$a;->b(I)Landroid/support/v7/a/d$a;

    move-result-object v1

    const-string v2, "OK"

    new-instance v3, Lcom/northpolewonderland/santagram/PostDetails$5$1$1$1;

    invoke-direct {v3, p0}, Lcom/northpolewonderland/santagram/PostDetails$5$1$1$1;-><init>(Lcom/northpolewonderland/santagram/PostDetails$5$1$1;)V

    invoke-virtual {v1, v2, v3}, Landroid/support/v7/a/d$a;->a(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/a/d$a;

    invoke-virtual {v0}, Landroid/support/v7/a/d$a;->b()Landroid/support/v7/a/d;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/a/d;->show()V

    :cond_0
    return-void
.end method

.method public bridge synthetic done(Ljava/lang/Throwable;)V
    .locals 0

    check-cast p1, Lcom/parse/ParseException;

    invoke-virtual {p0, p1}, Lcom/northpolewonderland/santagram/PostDetails$5$1$1;->done(Lcom/parse/ParseException;)V

    return-void
.end method
