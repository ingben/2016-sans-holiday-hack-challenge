.class Lcom/northpolewonderland/santagram/PostDetails$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/northpolewonderland/santagram/PostDetails;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/northpolewonderland/santagram/PostDetails;


# direct methods
.method constructor <init>(Lcom/northpolewonderland/santagram/PostDetails;)V
    .locals 0

    iput-object p1, p0, Lcom/northpolewonderland/santagram/PostDetails$3;->a:Lcom/northpolewonderland/santagram/PostDetails;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/northpolewonderland/santagram/PostDetails$3;->a:Lcom/northpolewonderland/santagram/PostDetails;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/northpolewonderland/santagram/PostDetails;->likesArray:Ljava/util/List;

    sget-object v0, Lcom/northpolewonderland/santagram/Configs;->LIKES_CLASS_NAME:Ljava/lang/String;

    invoke-static {v0}, Lcom/parse/ParseQuery;->getQuery(Ljava/lang/String;)Lcom/parse/ParseQuery;

    move-result-object v0

    sget-object v1, Lcom/northpolewonderland/santagram/Configs;->LIKES_LIKED_BY:Ljava/lang/String;

    iget-object v2, p0, Lcom/northpolewonderland/santagram/PostDetails$3;->a:Lcom/northpolewonderland/santagram/PostDetails;

    iget-object v2, v2, Lcom/northpolewonderland/santagram/PostDetails;->currUser:Lcom/parse/ParseUser;

    invoke-virtual {v0, v1, v2}, Lcom/parse/ParseQuery;->whereEqualTo(Ljava/lang/String;Ljava/lang/Object;)Lcom/parse/ParseQuery;

    sget-object v1, Lcom/northpolewonderland/santagram/Configs;->LIKES_POST_LIKED:Ljava/lang/String;

    iget-object v2, p0, Lcom/northpolewonderland/santagram/PostDetails$3;->a:Lcom/northpolewonderland/santagram/PostDetails;

    iget-object v2, v2, Lcom/northpolewonderland/santagram/PostDetails;->postObj:Lcom/parse/ParseObject;

    invoke-virtual {v0, v1, v2}, Lcom/parse/ParseQuery;->whereEqualTo(Ljava/lang/String;Ljava/lang/Object;)Lcom/parse/ParseQuery;

    new-instance v1, Lcom/northpolewonderland/santagram/PostDetails$3$1;

    invoke-direct {v1, p0}, Lcom/northpolewonderland/santagram/PostDetails$3$1;-><init>(Lcom/northpolewonderland/santagram/PostDetails$3;)V

    invoke-virtual {v0, v1}, Lcom/parse/ParseQuery;->findInBackground(Lcom/parse/FindCallback;)V

    return-void
.end method
