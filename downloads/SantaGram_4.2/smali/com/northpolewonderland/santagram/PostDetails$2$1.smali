.class Lcom/northpolewonderland/santagram/PostDetails$2$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/parse/DeleteCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/northpolewonderland/santagram/PostDetails$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/northpolewonderland/santagram/PostDetails$2;


# direct methods
.method constructor <init>(Lcom/northpolewonderland/santagram/PostDetails$2;)V
    .locals 0

    iput-object p1, p0, Lcom/northpolewonderland/santagram/PostDetails$2$1;->a:Lcom/northpolewonderland/santagram/PostDetails$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public done(Lcom/parse/ParseException;)V
    .locals 3

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/northpolewonderland/santagram/PostDetails$2$1;->a:Lcom/northpolewonderland/santagram/PostDetails$2;

    iget-object v0, v0, Lcom/northpolewonderland/santagram/PostDetails$2;->a:Lcom/northpolewonderland/santagram/PostDetails;

    iget-object v0, v0, Lcom/northpolewonderland/santagram/PostDetails;->followButt:Landroid/widget/Button;

    const-string v1, "follow"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/northpolewonderland/santagram/PostDetails$2$1;->a:Lcom/northpolewonderland/santagram/PostDetails$2;

    iget-object v0, v0, Lcom/northpolewonderland/santagram/PostDetails$2;->a:Lcom/northpolewonderland/santagram/PostDetails;

    iget-object v0, v0, Lcom/northpolewonderland/santagram/PostDetails;->followButt:Landroid/widget/Button;

    const v1, 0x7f020052

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/northpolewonderland/santagram/PostDetails$2$1;->a:Lcom/northpolewonderland/santagram/PostDetails$2;

    iget-object v0, v0, Lcom/northpolewonderland/santagram/PostDetails$2;->a:Lcom/northpolewonderland/santagram/PostDetails;

    iget-object v0, v0, Lcom/northpolewonderland/santagram/PostDetails;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/northpolewonderland/santagram/PostDetails$2$1;->a:Lcom/northpolewonderland/santagram/PostDetails$2;

    iget-object v0, v0, Lcom/northpolewonderland/santagram/PostDetails$2;->a:Lcom/northpolewonderland/santagram/PostDetails;

    invoke-virtual {v0}, Lcom/northpolewonderland/santagram/PostDetails;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/parse/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/northpolewonderland/santagram/PostDetails$2$1;->a:Lcom/northpolewonderland/santagram/PostDetails$2;

    iget-object v0, v0, Lcom/northpolewonderland/santagram/PostDetails$2;->a:Lcom/northpolewonderland/santagram/PostDetails;

    iget-object v0, v0, Lcom/northpolewonderland/santagram/PostDetails;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    goto :goto_0
.end method

.method public bridge synthetic done(Ljava/lang/Throwable;)V
    .locals 0

    check-cast p1, Lcom/parse/ParseException;

    invoke-virtual {p0, p1}, Lcom/northpolewonderland/santagram/PostDetails$2$1;->done(Lcom/parse/ParseException;)V

    return-void
.end method
