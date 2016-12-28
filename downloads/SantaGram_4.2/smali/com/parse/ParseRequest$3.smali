.class Lcom/parse/ParseRequest$3;
.super Ljava/lang/Object;

# interfaces
.implements La/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseRequest;->sendOneRequestAsync(Lcom/parse/ParseHttpClient;Lcom/parse/a/b;Lcom/parse/ProgressCallback;)La/j;
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
        "<TResponse;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParseRequest;

.field final synthetic val$client:Lcom/parse/ParseHttpClient;

.field final synthetic val$downloadProgressCallback:Lcom/parse/ProgressCallback;

.field final synthetic val$request:Lcom/parse/a/b;


# direct methods
.method constructor <init>(Lcom/parse/ParseRequest;Lcom/parse/ParseHttpClient;Lcom/parse/a/b;Lcom/parse/ProgressCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/parse/ParseRequest$3;->this$0:Lcom/parse/ParseRequest;

    iput-object p2, p0, Lcom/parse/ParseRequest$3;->val$client:Lcom/parse/ParseHttpClient;

    iput-object p3, p0, Lcom/parse/ParseRequest$3;->val$request:Lcom/parse/a/b;

    iput-object p4, p0, Lcom/parse/ParseRequest$3;->val$downloadProgressCallback:Lcom/parse/ProgressCallback;

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
            "<TResponse;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/parse/ParseRequest$3;->val$client:Lcom/parse/ParseHttpClient;

    iget-object v1, p0, Lcom/parse/ParseRequest$3;->val$request:Lcom/parse/a/b;

    invoke-virtual {v0, v1}, Lcom/parse/ParseHttpClient;->execute(Lcom/parse/a/b;)Lcom/parse/a/c;

    move-result-object v0

    iget-object v1, p0, Lcom/parse/ParseRequest$3;->this$0:Lcom/parse/ParseRequest;

    iget-object v2, p0, Lcom/parse/ParseRequest$3;->val$downloadProgressCallback:Lcom/parse/ProgressCallback;

    invoke-virtual {v1, v0, v2}, Lcom/parse/ParseRequest;->onResponseAsync(Lcom/parse/a/c;Lcom/parse/ProgressCallback;)La/j;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic then(La/j;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/parse/ParseRequest$3;->then(La/j;)La/j;

    move-result-object v0

    return-object v0
.end method
