.class Lcom/northpolewonderland/santagram/Search$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


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

    iput-object p1, p0, Lcom/northpolewonderland/santagram/Search$3;->a:Lcom/northpolewonderland/santagram/Search;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 5

    const/4 v1, 0x0

    const/4 v0, 0x3

    if-ne p2, v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/northpolewonderland/santagram/Search$3;->a:Lcom/northpolewonderland/santagram/Search;

    iget-object v2, v2, Lcom/northpolewonderland/santagram/Search;->searchTxt:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/northpolewonderland/santagram/Search$3;->a:Lcom/northpolewonderland/santagram/Search;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Lcom/northpolewonderland/santagram/Search;->queryPosts(Ljava/util/ArrayList;)V

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_1
    move v0, v1

    goto :goto_1
.end method
