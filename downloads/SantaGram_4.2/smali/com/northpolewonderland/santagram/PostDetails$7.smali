.class Lcom/northpolewonderland/santagram/PostDetails$7;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/parse/GetCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/northpolewonderland/santagram/PostDetails;->showPostDetails()V
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
.field final synthetic a:Lcom/northpolewonderland/santagram/PostDetails;


# direct methods
.method constructor <init>(Lcom/northpolewonderland/santagram/PostDetails;)V
    .locals 0

    iput-object p1, p0, Lcom/northpolewonderland/santagram/PostDetails$7;->a:Lcom/northpolewonderland/santagram/PostDetails;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public done(Lcom/parse/ParseObject;Lcom/parse/ParseException;)V
    .locals 3

    iget-object v0, p0, Lcom/northpolewonderland/santagram/PostDetails$7;->a:Lcom/northpolewonderland/santagram/PostDetails;

    const v1, 0x7f0d00d1

    invoke-virtual {v0, v1}, Lcom/northpolewonderland/santagram/PostDetails;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget-object v1, Lcom/northpolewonderland/santagram/Configs;->USER_FULLNAME:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/parse/ParseObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/northpolewonderland/santagram/PostDetails$7;->a:Lcom/northpolewonderland/santagram/PostDetails;

    const v1, 0x7f0d00d0

    invoke-virtual {v0, v1}, Lcom/northpolewonderland/santagram/PostDetails;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    sget-object v1, Lcom/northpolewonderland/santagram/Configs;->USER_AVATAR:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/parse/ParseObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parse/ParseFile;

    if-eqz v1, :cond_0

    new-instance v2, Lcom/northpolewonderland/santagram/PostDetails$7$1;

    invoke-direct {v2, p0, v0}, Lcom/northpolewonderland/santagram/PostDetails$7$1;-><init>(Lcom/northpolewonderland/santagram/PostDetails$7;Landroid/widget/ImageView;)V

    invoke-virtual {v1, v2}, Lcom/parse/ParseFile;->getDataInBackground(Lcom/parse/GetDataCallback;)V

    :cond_0
    new-instance v1, Lcom/northpolewonderland/santagram/PostDetails$7$2;

    invoke-direct {v1, p0}, Lcom/northpolewonderland/santagram/PostDetails$7$2;-><init>(Lcom/northpolewonderland/santagram/PostDetails$7;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/northpolewonderland/santagram/PostDetails$7;->a:Lcom/northpolewonderland/santagram/PostDetails;

    const v1, 0x7f0d00d3

    invoke-virtual {v0, v1}, Lcom/northpolewonderland/santagram/PostDetails;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/northpolewonderland/santagram/PostDetails$7;->a:Lcom/northpolewonderland/santagram/PostDetails;

    iget-object v1, v1, Lcom/northpolewonderland/santagram/PostDetails;->postObj:Lcom/parse/ParseObject;

    sget-object v2, Lcom/northpolewonderland/santagram/Configs;->POSTS_IMAGE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/parse/ParseObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parse/ParseFile;

    if-eqz v1, :cond_1

    new-instance v2, Lcom/northpolewonderland/santagram/PostDetails$7$3;

    invoke-direct {v2, p0, v0}, Lcom/northpolewonderland/santagram/PostDetails$7$3;-><init>(Lcom/northpolewonderland/santagram/PostDetails$7;Landroid/widget/ImageView;)V

    invoke-virtual {v1, v2}, Lcom/parse/ParseFile;->getDataInBackground(Lcom/parse/GetDataCallback;)V

    :cond_1
    iget-object v1, p0, Lcom/northpolewonderland/santagram/PostDetails$7;->a:Lcom/northpolewonderland/santagram/PostDetails;

    const v2, 0x7f0d00dd

    invoke-virtual {v1, v2}, Lcom/northpolewonderland/santagram/PostDetails;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    new-instance v2, Lcom/northpolewonderland/santagram/PostDetails$7$4;

    invoke-direct {v2, p0, v1}, Lcom/northpolewonderland/santagram/PostDetails$7$4;-><init>(Lcom/northpolewonderland/santagram/PostDetails$7;Landroid/widget/ImageView;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/northpolewonderland/santagram/PostDetails$7$5;

    invoke-direct {v0, p0}, Lcom/northpolewonderland/santagram/PostDetails$7$5;-><init>(Lcom/northpolewonderland/santagram/PostDetails$7;)V

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/northpolewonderland/santagram/PostDetails$7;->a:Lcom/northpolewonderland/santagram/PostDetails;

    const v1, 0x7f0d00d4

    invoke-virtual {v0, v1}, Lcom/northpolewonderland/santagram/PostDetails;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/northpolewonderland/santagram/PostDetails$7;->a:Lcom/northpolewonderland/santagram/PostDetails;

    iget-object v1, v1, Lcom/northpolewonderland/santagram/PostDetails;->postObj:Lcom/parse/ParseObject;

    sget-object v2, Lcom/northpolewonderland/santagram/Configs;->POSTS_TEXT:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/parse/ParseObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/northpolewonderland/santagram/PostDetails$7;->a:Lcom/northpolewonderland/santagram/PostDetails;

    const v1, 0x7f0d00d7

    invoke-virtual {v0, v1}, Lcom/northpolewonderland/santagram/PostDetails;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/northpolewonderland/santagram/PostDetails$7;->a:Lcom/northpolewonderland/santagram/PostDetails;

    iget-object v1, v1, Lcom/northpolewonderland/santagram/PostDetails;->postObj:Lcom/parse/ParseObject;

    sget-object v2, Lcom/northpolewonderland/santagram/Configs;->POSTS_LIKES:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/parse/ParseObject;->getNumber(Ljava/lang/String;)Ljava/lang/Number;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/northpolewonderland/santagram/PostDetails$7;->a:Lcom/northpolewonderland/santagram/PostDetails;

    iget-object v1, v1, Lcom/northpolewonderland/santagram/PostDetails;->postObj:Lcom/parse/ParseObject;

    sget-object v2, Lcom/northpolewonderland/santagram/Configs;->POSTS_LIKES:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/parse/ParseObject;->getNumber(Ljava/lang/String;)Ljava/lang/Number;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_2
    const-string v1, "0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public bridge synthetic done(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0

    check-cast p1, Lcom/parse/ParseObject;

    check-cast p2, Lcom/parse/ParseException;

    invoke-virtual {p0, p1, p2}, Lcom/northpolewonderland/santagram/PostDetails$7;->done(Lcom/parse/ParseObject;Lcom/parse/ParseException;)V

    return-void
.end method
