.class Lcom/northpolewonderland/santagram/Comments$2$a$1$2$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/parse/GetCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/northpolewonderland/santagram/Comments$2$a$1$2;->onClick(Landroid/view/View;)V
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
.field final synthetic a:Lcom/northpolewonderland/santagram/Comments$2$a$1$2;


# direct methods
.method constructor <init>(Lcom/northpolewonderland/santagram/Comments$2$a$1$2;)V
    .locals 0

    iput-object p1, p0, Lcom/northpolewonderland/santagram/Comments$2$a$1$2$1;->a:Lcom/northpolewonderland/santagram/Comments$2$a$1$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public done(Lcom/parse/ParseObject;Lcom/parse/ParseException;)V
    .locals 3

    iget-object v0, p0, Lcom/northpolewonderland/santagram/Comments$2$a$1$2$1;->a:Lcom/northpolewonderland/santagram/Comments$2$a$1$2;

    iget-object v0, v0, Lcom/northpolewonderland/santagram/Comments$2$a$1$2;->a:Lcom/northpolewonderland/santagram/Comments$2$a$1;

    iget-object v0, v0, Lcom/northpolewonderland/santagram/Comments$2$a$1;->c:Lcom/northpolewonderland/santagram/Comments$2$a;

    iget-object v0, v0, Lcom/northpolewonderland/santagram/Comments$2$a;->a:Lcom/northpolewonderland/santagram/Comments$2;

    iget-object v0, v0, Lcom/northpolewonderland/santagram/Comments$2;->a:Lcom/northpolewonderland/santagram/Comments;

    sget-object v1, Lcom/northpolewonderland/santagram/Configs;->USER_FULLNAME:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/parse/ParseObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public bridge synthetic done(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0

    check-cast p1, Lcom/parse/ParseObject;

    check-cast p2, Lcom/parse/ParseException;

    invoke-virtual {p0, p1, p2}, Lcom/northpolewonderland/santagram/Comments$2$a$1$2$1;->done(Lcom/parse/ParseObject;Lcom/parse/ParseException;)V

    return-void
.end method
