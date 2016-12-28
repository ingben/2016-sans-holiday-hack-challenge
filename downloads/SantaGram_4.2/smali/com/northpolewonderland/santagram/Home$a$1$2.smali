.class Lcom/northpolewonderland/santagram/Home$a$1$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/northpolewonderland/santagram/Home$a$1;->done(Lcom/parse/ParseObject;Lcom/parse/ParseException;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/northpolewonderland/santagram/Home$a$1;


# direct methods
.method constructor <init>(Lcom/northpolewonderland/santagram/Home$a$1;)V
    .locals 0

    iput-object p1, p0, Lcom/northpolewonderland/santagram/Home$a$1$2;->a:Lcom/northpolewonderland/santagram/Home$a$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/northpolewonderland/santagram/Home$a$1$2;->a:Lcom/northpolewonderland/santagram/Home$a$1;

    iget-object v0, v0, Lcom/northpolewonderland/santagram/Home$a$1;->b:Lcom/parse/ParseObject;

    sget-object v1, Lcom/northpolewonderland/santagram/Configs;->POSTS_USER_POINTER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/parse/ParseObject;->getParseObject(Ljava/lang/String;)Lcom/parse/ParseObject;

    move-result-object v0

    new-instance v1, Lcom/northpolewonderland/santagram/Home$a$1$2$1;

    invoke-direct {v1, p0}, Lcom/northpolewonderland/santagram/Home$a$1$2$1;-><init>(Lcom/northpolewonderland/santagram/Home$a$1$2;)V

    invoke-virtual {v0, v1}, Lcom/parse/ParseObject;->fetchIfNeededInBackground(Lcom/parse/GetCallback;)V

    return-void
.end method
