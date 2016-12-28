.class Lcom/parse/ParseAuthenticationManager$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseAuthenticationManager;->deauthenticateAsync(Ljava/lang/String;)La/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParseAuthenticationManager;

.field final synthetic val$callback:Lcom/parse/AuthenticationCallback;


# direct methods
.method constructor <init>(Lcom/parse/ParseAuthenticationManager;Lcom/parse/AuthenticationCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/parse/ParseAuthenticationManager$3;->this$0:Lcom/parse/ParseAuthenticationManager;

    iput-object p2, p0, Lcom/parse/ParseAuthenticationManager$3;->val$callback:Lcom/parse/AuthenticationCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/parse/ParseAuthenticationManager$3;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/parse/ParseAuthenticationManager$3;->val$callback:Lcom/parse/AuthenticationCallback;

    invoke-interface {v0, v1}, Lcom/parse/AuthenticationCallback;->onRestore(Ljava/util/Map;)Z

    return-object v1
.end method
