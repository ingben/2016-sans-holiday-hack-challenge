.class Lcom/northpolewonderland/santagram/Comments$1$1$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/parse/GetCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/northpolewonderland/santagram/Comments$1$1;->done(Lcom/parse/ParseException;)V
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
.field final synthetic a:Lcom/northpolewonderland/santagram/Comments$1$1;


# direct methods
.method constructor <init>(Lcom/northpolewonderland/santagram/Comments$1$1;)V
    .locals 0

    iput-object p1, p0, Lcom/northpolewonderland/santagram/Comments$1$1$2;->a:Lcom/northpolewonderland/santagram/Comments$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public done(Lcom/parse/ParseObject;Lcom/parse/ParseException;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/northpolewonderland/santagram/Comments$1$1$2;->a:Lcom/northpolewonderland/santagram/Comments$1$1;

    iget-object v1, v1, Lcom/northpolewonderland/santagram/Comments$1$1;->a:Lcom/northpolewonderland/santagram/Comments$1;

    iget-object v1, v1, Lcom/northpolewonderland/santagram/Comments$1;->a:Lcom/northpolewonderland/santagram/Comments;

    iget-object v1, v1, Lcom/northpolewonderland/santagram/Comments;->currUser:Lcom/parse/ParseUser;

    sget-object v2, Lcom/northpolewonderland/santagram/Configs;->USER_FULLNAME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/parse/ParseUser;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " commented on your post: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/northpolewonderland/santagram/Comments$1$1$2;->a:Lcom/northpolewonderland/santagram/Comments$1$1;

    iget-object v1, v1, Lcom/northpolewonderland/santagram/Comments$1$1;->a:Lcom/northpolewonderland/santagram/Comments$1;

    iget-object v1, v1, Lcom/northpolewonderland/santagram/Comments$1;->a:Lcom/northpolewonderland/santagram/Comments;

    iget-object v1, v1, Lcom/northpolewonderland/santagram/Comments;->postObj:Lcom/parse/ParseObject;

    sget-object v2, Lcom/northpolewonderland/santagram/Configs;->POSTS_TEXT:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/parse/ParseObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/parse/ParseObject;

    sget-object v2, Lcom/northpolewonderland/santagram/Configs;->ACTIVITY_CLASS_NAME:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/parse/ParseObject;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/northpolewonderland/santagram/Configs;->ACTIVITY_CURRENT_USER:Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Lcom/parse/ParseObject;->put(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v2, Lcom/northpolewonderland/santagram/Configs;->ACTIVITY_OTHER_USER:Ljava/lang/String;

    iget-object v3, p0, Lcom/northpolewonderland/santagram/Comments$1$1$2;->a:Lcom/northpolewonderland/santagram/Comments$1$1;

    iget-object v3, v3, Lcom/northpolewonderland/santagram/Comments$1$1;->a:Lcom/northpolewonderland/santagram/Comments$1;

    iget-object v3, v3, Lcom/northpolewonderland/santagram/Comments$1;->a:Lcom/northpolewonderland/santagram/Comments;

    iget-object v3, v3, Lcom/northpolewonderland/santagram/Comments;->currUser:Lcom/parse/ParseUser;

    invoke-virtual {v1, v2, v3}, Lcom/parse/ParseObject;->put(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v2, Lcom/northpolewonderland/santagram/Configs;->ACTIVITY_TEXT:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/parse/ParseObject;->put(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/parse/ParseObject;->saveInBackground()La/j;

    return-void
.end method

.method public bridge synthetic done(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0

    check-cast p1, Lcom/parse/ParseObject;

    check-cast p2, Lcom/parse/ParseException;

    invoke-virtual {p0, p1, p2}, Lcom/northpolewonderland/santagram/Comments$1$1$2;->done(Lcom/parse/ParseObject;Lcom/parse/ParseException;)V

    return-void
.end method
