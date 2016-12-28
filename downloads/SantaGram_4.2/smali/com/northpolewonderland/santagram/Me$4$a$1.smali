.class Lcom/northpolewonderland/santagram/Me$4$a$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/parse/GetCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/northpolewonderland/santagram/Me$4$a;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
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

.field final synthetic b:Lcom/northpolewonderland/santagram/Me$4$a;


# direct methods
.method constructor <init>(Lcom/northpolewonderland/santagram/Me$4$a;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/northpolewonderland/santagram/Me$4$a$1;->b:Lcom/northpolewonderland/santagram/Me$4$a;

    iput-object p2, p0, Lcom/northpolewonderland/santagram/Me$4$a$1;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public done(Lcom/parse/ParseObject;Lcom/parse/ParseException;)V
    .locals 2

    sget-object v0, Lcom/northpolewonderland/santagram/Configs;->POSTS_USER_POINTER:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/parse/ParseObject;->getParseObject(Ljava/lang/String;)Lcom/parse/ParseObject;

    move-result-object v0

    new-instance v1, Lcom/northpolewonderland/santagram/Me$4$a$1$1;

    invoke-direct {v1, p0, p1}, Lcom/northpolewonderland/santagram/Me$4$a$1$1;-><init>(Lcom/northpolewonderland/santagram/Me$4$a$1;Lcom/parse/ParseObject;)V

    invoke-virtual {v0, v1}, Lcom/parse/ParseObject;->fetchIfNeededInBackground(Lcom/parse/GetCallback;)V

    return-void
.end method

.method public bridge synthetic done(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0

    check-cast p1, Lcom/parse/ParseObject;

    check-cast p2, Lcom/parse/ParseException;

    invoke-virtual {p0, p1, p2}, Lcom/northpolewonderland/santagram/Me$4$a$1;->done(Lcom/parse/ParseObject;Lcom/parse/ParseException;)V

    return-void
.end method
