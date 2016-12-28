.class Lcom/parse/ParseQuery$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/parse/ParseQuery$CacheThenNetworkCallable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseQuery;->getFirstInBackground(Lcom/parse/GetCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/parse/ParseQuery$CacheThenNetworkCallable",
        "<TT;",
        "La/j",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParseQuery;


# direct methods
.method constructor <init>(Lcom/parse/ParseQuery;)V
    .locals 0

    iput-object p1, p0, Lcom/parse/ParseQuery$4;->this$0:Lcom/parse/ParseQuery;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/parse/ParseQuery$State;Lcom/parse/ParseUser;La/j;)La/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseQuery$State",
            "<TT;>;",
            "Lcom/parse/ParseUser;",
            "La/j",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "La/j",
            "<TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/parse/ParseQuery$4;->this$0:Lcom/parse/ParseQuery;

    # invokes: Lcom/parse/ParseQuery;->getFirstAsync(Lcom/parse/ParseQuery$State;Lcom/parse/ParseUser;La/j;)La/j;
    invoke-static {v0, p1, p2, p3}, Lcom/parse/ParseQuery;->access$2100(Lcom/parse/ParseQuery;Lcom/parse/ParseQuery$State;Lcom/parse/ParseUser;La/j;)La/j;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call(Lcom/parse/ParseQuery$State;Lcom/parse/ParseUser;La/j;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1, p2, p3}, Lcom/parse/ParseQuery$4;->call(Lcom/parse/ParseQuery$State;Lcom/parse/ParseUser;La/j;)La/j;

    move-result-object v0

    return-object v0
.end method
