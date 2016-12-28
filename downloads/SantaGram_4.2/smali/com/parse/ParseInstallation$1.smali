.class Lcom/parse/ParseInstallation$1;
.super Ljava/lang/Object;

# interfaces
.implements La/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseInstallation;->fetchAsync(Ljava/lang/String;La/j;)La/j;
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
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParseInstallation;

.field final synthetic val$sessionToken:Ljava/lang/String;

.field final synthetic val$toAwait:La/j;


# direct methods
.method constructor <init>(Lcom/parse/ParseInstallation;Ljava/lang/String;La/j;)V
    .locals 0

    iput-object p1, p0, Lcom/parse/ParseInstallation$1;->this$0:Lcom/parse/ParseInstallation;

    iput-object p2, p0, Lcom/parse/ParseInstallation$1;->val$sessionToken:Ljava/lang/String;

    iput-object p3, p0, Lcom/parse/ParseInstallation$1;->val$toAwait:La/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(La/j;)La/j;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/j",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "La/j",
            "<TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/parse/ParseInstallation$1;->this$0:Lcom/parse/ParseInstallation;

    iget-object v1, p0, Lcom/parse/ParseInstallation$1;->val$sessionToken:Ljava/lang/String;

    iget-object v2, p0, Lcom/parse/ParseInstallation$1;->val$toAwait:La/j;

    # invokes: Lcom/parse/ParseObject;->fetchAsync(Ljava/lang/String;La/j;)La/j;
    invoke-static {v0, v1, v2}, Lcom/parse/ParseInstallation;->access$001(Lcom/parse/ParseInstallation;Ljava/lang/String;La/j;)La/j;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic then(La/j;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/parse/ParseInstallation$1;->then(La/j;)La/j;

    move-result-object v0

    return-object v0
.end method
