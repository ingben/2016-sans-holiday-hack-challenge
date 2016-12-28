.class Lcom/parse/ParseUser$15;
.super Ljava/lang/Object;

# interfaces
.implements La/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseUser;->linkWithAsync(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)La/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "La/h",
        "<",
        "Ljava/lang/Void;",
        "La/j",
        "<",
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParseUser;

.field final synthetic val$authData:Ljava/util/Map;

.field final synthetic val$authType:Ljava/lang/String;

.field final synthetic val$sessionToken:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/parse/ParseUser;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/parse/ParseUser$15;->this$0:Lcom/parse/ParseUser;

    iput-object p2, p0, Lcom/parse/ParseUser$15;->val$authType:Ljava/lang/String;

    iput-object p3, p0, Lcom/parse/ParseUser$15;->val$authData:Ljava/util/Map;

    iput-object p4, p0, Lcom/parse/ParseUser$15;->val$sessionToken:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(La/j;)La/j;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/j",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "La/j",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/parse/ParseUser$15;->this$0:Lcom/parse/ParseUser;

    iget-object v1, p0, Lcom/parse/ParseUser$15;->val$authType:Ljava/lang/String;

    iget-object v2, p0, Lcom/parse/ParseUser$15;->val$authData:Ljava/util/Map;

    iget-object v3, p0, Lcom/parse/ParseUser$15;->val$sessionToken:Ljava/lang/String;

    # invokes: Lcom/parse/ParseUser;->linkWithAsync(Ljava/lang/String;Ljava/util/Map;La/j;Ljava/lang/String;)La/j;
    invoke-static {v0, v1, v2, p1, v3}, Lcom/parse/ParseUser;->access$700(Lcom/parse/ParseUser;Ljava/lang/String;Ljava/util/Map;La/j;Ljava/lang/String;)La/j;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic then(La/j;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/parse/ParseUser$15;->then(La/j;)La/j;

    move-result-object v0

    return-object v0
.end method
