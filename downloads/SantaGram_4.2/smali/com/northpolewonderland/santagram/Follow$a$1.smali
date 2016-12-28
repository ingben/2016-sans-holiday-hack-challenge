.class Lcom/northpolewonderland/santagram/Follow$a$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/parse/GetCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/northpolewonderland/santagram/Follow$a;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
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
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/northpolewonderland/santagram/Follow$a;


# direct methods
.method constructor <init>(Lcom/northpolewonderland/santagram/Follow$a;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/northpolewonderland/santagram/Follow$a$1;->b:Lcom/northpolewonderland/santagram/Follow$a;

    iput-object p2, p0, Lcom/northpolewonderland/santagram/Follow$a$1;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public done(Lcom/parse/ParseObject;Lcom/parse/ParseException;)V
    .locals 3

    iget-object v0, p0, Lcom/northpolewonderland/santagram/Follow$a$1;->a:Landroid/view/View;

    const v1, 0x7f0d0094

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget-object v1, Lcom/northpolewonderland/santagram/Configs;->USER_FULLNAME:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/parse/ParseObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/northpolewonderland/santagram/Follow$a$1;->a:Landroid/view/View;

    const v1, 0x7f0d0093

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    sget-object v1, Lcom/northpolewonderland/santagram/Configs;->USER_AVATAR:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/parse/ParseObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parse/ParseFile;

    if-eqz v1, :cond_0

    new-instance v2, Lcom/northpolewonderland/santagram/Follow$a$1$1;

    invoke-direct {v2, p0, v0}, Lcom/northpolewonderland/santagram/Follow$a$1$1;-><init>(Lcom/northpolewonderland/santagram/Follow$a$1;Landroid/widget/ImageView;)V

    invoke-virtual {v1, v2}, Lcom/parse/ParseFile;->getDataInBackground(Lcom/parse/GetDataCallback;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic done(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0

    check-cast p1, Lcom/parse/ParseObject;

    check-cast p2, Lcom/parse/ParseException;

    invoke-virtual {p0, p1, p2}, Lcom/northpolewonderland/santagram/Follow$a$1;->done(Lcom/parse/ParseObject;Lcom/parse/ParseException;)V

    return-void
.end method
