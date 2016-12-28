.class Lcom/northpolewonderland/santagram/Comments$2$a$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/parse/GetCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/northpolewonderland/santagram/Comments$2$a;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
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

.field final synthetic b:Lcom/parse/ParseObject;

.field final synthetic c:Lcom/northpolewonderland/santagram/Comments$2$a;


# direct methods
.method constructor <init>(Lcom/northpolewonderland/santagram/Comments$2$a;Landroid/view/View;Lcom/parse/ParseObject;)V
    .locals 0

    iput-object p1, p0, Lcom/northpolewonderland/santagram/Comments$2$a$1;->c:Lcom/northpolewonderland/santagram/Comments$2$a;

    iput-object p2, p0, Lcom/northpolewonderland/santagram/Comments$2$a$1;->a:Landroid/view/View;

    iput-object p3, p0, Lcom/northpolewonderland/santagram/Comments$2$a$1;->b:Lcom/parse/ParseObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public done(Lcom/parse/ParseObject;Lcom/parse/ParseException;)V
    .locals 4

    iget-object v0, p0, Lcom/northpolewonderland/santagram/Comments$2$a$1;->a:Landroid/view/View;

    const v1, 0x7f0d0078

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget-object v1, Lcom/northpolewonderland/santagram/Configs;->USER_FULLNAME:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/parse/ParseObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/northpolewonderland/santagram/Comments$2$a$1;->a:Landroid/view/View;

    const v1, 0x7f0d0079

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/northpolewonderland/santagram/Comments$2$a$1;->b:Lcom/parse/ParseObject;

    sget-object v2, Lcom/northpolewonderland/santagram/Configs;->COMMENTS_COMMENT:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/parse/ParseObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/northpolewonderland/santagram/Comments$2$a$1;->a:Landroid/view/View;

    const v1, 0x7f0d007a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/northpolewonderland/santagram/Comments$2$a$1;->b:Lcom/parse/ParseObject;

    invoke-virtual {v1}, Lcom/parse/ParseObject;->getCreatedAt()Ljava/util/Date;

    move-result-object v1

    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "MMM dd yyyy | hh:mm a"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/northpolewonderland/santagram/Comments$2$a$1;->a:Landroid/view/View;

    const v1, 0x7f0d0077

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    sget-object v1, Lcom/northpolewonderland/santagram/Configs;->USER_AVATAR:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/parse/ParseObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parse/ParseFile;

    if-eqz v1, :cond_0

    new-instance v2, Lcom/northpolewonderland/santagram/Comments$2$a$1$1;

    invoke-direct {v2, p0, v0}, Lcom/northpolewonderland/santagram/Comments$2$a$1$1;-><init>(Lcom/northpolewonderland/santagram/Comments$2$a$1;Landroid/widget/ImageView;)V

    invoke-virtual {v1, v2}, Lcom/parse/ParseFile;->getDataInBackground(Lcom/parse/GetDataCallback;)V

    :cond_0
    new-instance v1, Lcom/northpolewonderland/santagram/Comments$2$a$1$2;

    invoke-direct {v1, p0}, Lcom/northpolewonderland/santagram/Comments$2$a$1$2;-><init>(Lcom/northpolewonderland/santagram/Comments$2$a$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic done(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0

    check-cast p1, Lcom/parse/ParseObject;

    check-cast p2, Lcom/parse/ParseException;

    invoke-virtual {p0, p1, p2}, Lcom/northpolewonderland/santagram/Comments$2$a$1;->done(Lcom/parse/ParseObject;Lcom/parse/ParseException;)V

    return-void
.end method
