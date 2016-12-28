.class Lcom/northpolewonderland/santagram/Me$4$a$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/parse/GetCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/northpolewonderland/santagram/Me$4$a$1;->done(Lcom/parse/ParseObject;Lcom/parse/ParseException;)V
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
.field final synthetic a:Lcom/parse/ParseObject;

.field final synthetic b:Lcom/northpolewonderland/santagram/Me$4$a$1;


# direct methods
.method constructor <init>(Lcom/northpolewonderland/santagram/Me$4$a$1;Lcom/parse/ParseObject;)V
    .locals 0

    iput-object p1, p0, Lcom/northpolewonderland/santagram/Me$4$a$1$1;->b:Lcom/northpolewonderland/santagram/Me$4$a$1;

    iput-object p2, p0, Lcom/northpolewonderland/santagram/Me$4$a$1$1;->a:Lcom/parse/ParseObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public done(Lcom/parse/ParseObject;Lcom/parse/ParseException;)V
    .locals 7

    const v6, 0x7f0d00ca

    const v5, 0x7f0d00c7

    const v4, 0x7f0d00c4

    const v3, 0x7f0d00c3

    const v2, 0x7f020058

    iget-object v0, p0, Lcom/northpolewonderland/santagram/Me$4$a$1$1;->a:Lcom/parse/ParseObject;

    sget-object v1, Lcom/northpolewonderland/santagram/Configs;->POSTS_IS_REPORTED:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/parse/ParseObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/northpolewonderland/santagram/Me$4$a$1$1;->b:Lcom/northpolewonderland/santagram/Me$4$a$1;

    iget-object v0, v0, Lcom/northpolewonderland/santagram/Me$4$a$1;->a:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget-object v1, Lcom/northpolewonderland/santagram/Configs;->USER_FULLNAME:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/parse/ParseObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/northpolewonderland/santagram/Me$4$a$1$1;->b:Lcom/northpolewonderland/santagram/Me$4$a$1;

    iget-object v0, v0, Lcom/northpolewonderland/santagram/Me$4$a$1;->a:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    sget-object v1, Lcom/northpolewonderland/santagram/Configs;->USER_AVATAR:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/parse/ParseObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parse/ParseFile;

    if-eqz v1, :cond_0

    new-instance v2, Lcom/northpolewonderland/santagram/Me$4$a$1$1$1;

    invoke-direct {v2, p0, v0}, Lcom/northpolewonderland/santagram/Me$4$a$1$1$1;-><init>(Lcom/northpolewonderland/santagram/Me$4$a$1$1;Landroid/widget/ImageView;)V

    invoke-virtual {v1, v2}, Lcom/parse/ParseFile;->getDataInBackground(Lcom/parse/GetDataCallback;)V

    :cond_0
    new-instance v1, Lcom/northpolewonderland/santagram/Me$4$a$1$1$2;

    invoke-direct {v1, p0}, Lcom/northpolewonderland/santagram/Me$4$a$1$1$2;-><init>(Lcom/northpolewonderland/santagram/Me$4$a$1$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/northpolewonderland/santagram/Me$4$a$1$1;->b:Lcom/northpolewonderland/santagram/Me$4$a$1;

    iget-object v0, v0, Lcom/northpolewonderland/santagram/Me$4$a$1;->a:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/northpolewonderland/santagram/Me$4$a$1$1;->a:Lcom/parse/ParseObject;

    sget-object v2, Lcom/northpolewonderland/santagram/Configs;->POSTS_CITY:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/parse/ParseObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/northpolewonderland/santagram/Me$4$a$1$1;->a:Lcom/parse/ParseObject;

    sget-object v2, Lcom/northpolewonderland/santagram/Configs;->POSTS_CITY:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/parse/ParseObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v0, p0, Lcom/northpolewonderland/santagram/Me$4$a$1$1;->b:Lcom/northpolewonderland/santagram/Me$4$a$1;

    iget-object v0, v0, Lcom/northpolewonderland/santagram/Me$4$a$1;->a:Landroid/view/View;

    const v1, 0x7f0d00cb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/northpolewonderland/santagram/Me$4$a$1$1;->a:Lcom/parse/ParseObject;

    sget-object v2, Lcom/northpolewonderland/santagram/Configs;->POSTS_TEXT:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/parse/ParseObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/northpolewonderland/santagram/Me$4$a$1$1;->b:Lcom/northpolewonderland/santagram/Me$4$a$1;

    iget-object v0, v0, Lcom/northpolewonderland/santagram/Me$4$a$1;->a:Landroid/view/View;

    const v1, 0x7f0d00cd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/northpolewonderland/santagram/Me$4$a$1$1;->a:Lcom/parse/ParseObject;

    sget-object v2, Lcom/northpolewonderland/santagram/Configs;->POSTS_LIKES:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/parse/ParseObject;->getNumber(Ljava/lang/String;)Ljava/lang/Number;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/northpolewonderland/santagram/Me$4$a$1$1;->a:Lcom/parse/ParseObject;

    sget-object v2, Lcom/northpolewonderland/santagram/Configs;->POSTS_LIKES:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/parse/ParseObject;->getNumber(Ljava/lang/String;)Ljava/lang/Number;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object v0, p0, Lcom/northpolewonderland/santagram/Me$4$a$1$1;->b:Lcom/northpolewonderland/santagram/Me$4$a$1;

    iget-object v0, v0, Lcom/northpolewonderland/santagram/Me$4$a$1;->a:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/northpolewonderland/santagram/Me$4$a$1$1;->a:Lcom/parse/ParseObject;

    sget-object v2, Lcom/northpolewonderland/santagram/Configs;->POSTS_IMAGE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/parse/ParseObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parse/ParseFile;

    if-eqz v1, :cond_1

    new-instance v2, Lcom/northpolewonderland/santagram/Me$4$a$1$1$3;

    invoke-direct {v2, p0, v0}, Lcom/northpolewonderland/santagram/Me$4$a$1$1$3;-><init>(Lcom/northpolewonderland/santagram/Me$4$a$1$1;Landroid/widget/ImageView;)V

    invoke-virtual {v1, v2}, Lcom/parse/ParseFile;->getDataInBackground(Lcom/parse/GetDataCallback;)V

    :cond_1
    iget-object v0, p0, Lcom/northpolewonderland/santagram/Me$4$a$1$1;->b:Lcom/northpolewonderland/santagram/Me$4$a$1;

    iget-object v0, v0, Lcom/northpolewonderland/santagram/Me$4$a$1;->a:Landroid/view/View;

    const v1, 0x7f0d00c8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    sget-object v2, Lcom/northpolewonderland/santagram/Configs;->colorsArray:[Ljava/lang/String;

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    sget-object v2, Lcom/northpolewonderland/santagram/Configs;->colorsArray:[Ljava/lang/String;

    aget-object v1, v2, v1

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    :goto_2
    return-void

    :cond_2
    const-string v1, "N/A"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_3
    const-string v1, "0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/northpolewonderland/santagram/Me$4$a$1$1;->b:Lcom/northpolewonderland/santagram/Me$4$a$1;

    iget-object v0, v0, Lcom/northpolewonderland/santagram/Me$4$a$1;->a:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "THIS POST IS REPORTED!"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/northpolewonderland/santagram/Me$4$a$1$1;->b:Lcom/northpolewonderland/santagram/Me$4$a$1;

    iget-object v0, v0, Lcom/northpolewonderland/santagram/Me$4$a$1;->a:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/northpolewonderland/santagram/Me$4$a$1$1;->b:Lcom/northpolewonderland/santagram/Me$4$a$1;

    iget-object v0, v0, Lcom/northpolewonderland/santagram/Me$4$a$1;->a:Landroid/view/View;

    const v1, 0x7f0d00cd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/northpolewonderland/santagram/Me$4$a$1$1;->b:Lcom/northpolewonderland/santagram/Me$4$a$1;

    iget-object v0, v0, Lcom/northpolewonderland/santagram/Me$4$a$1;->a:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/northpolewonderland/santagram/Me$4$a$1$1;->b:Lcom/northpolewonderland/santagram/Me$4$a$1;

    iget-object v0, v0, Lcom/northpolewonderland/santagram/Me$4$a$1;->a:Landroid/view/View;

    const v1, 0x7f0d00cb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/northpolewonderland/santagram/Me$4$a$1$1;->b:Lcom/northpolewonderland/santagram/Me$4$a$1;

    iget-object v0, v0, Lcom/northpolewonderland/santagram/Me$4$a$1;->a:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2
.end method

.method public bridge synthetic done(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0

    check-cast p1, Lcom/parse/ParseObject;

    check-cast p2, Lcom/parse/ParseException;

    invoke-virtual {p0, p1, p2}, Lcom/northpolewonderland/santagram/Me$4$a$1$1;->done(Lcom/parse/ParseObject;Lcom/parse/ParseException;)V

    return-void
.end method
