.class Lcom/parse/OfflineQueryController;
.super Lcom/parse/AbstractQueryController;


# instance fields
.field private final networkController:Lcom/parse/ParseQueryController;

.field private final offlineStore:Lcom/parse/OfflineStore;


# direct methods
.method public constructor <init>(Lcom/parse/OfflineStore;Lcom/parse/ParseQueryController;)V
    .locals 0

    invoke-direct {p0}, Lcom/parse/AbstractQueryController;-><init>()V

    iput-object p1, p0, Lcom/parse/OfflineQueryController;->offlineStore:Lcom/parse/OfflineStore;

    iput-object p2, p0, Lcom/parse/OfflineQueryController;->networkController:Lcom/parse/ParseQueryController;

    return-void
.end method


# virtual methods
.method public countAsync(Lcom/parse/ParseQuery$State;Lcom/parse/ParseUser;La/j;)La/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Lcom/parse/ParseQuery$State",
            "<TT;>;",
            "Lcom/parse/ParseUser;",
            "La/j",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "La/j",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/parse/ParseQuery$State;->isFromLocalDatastore()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parse/OfflineQueryController;->offlineStore:Lcom/parse/OfflineStore;

    invoke-virtual {p1}, Lcom/parse/ParseQuery$State;->pinName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/parse/OfflineStore;->countFromPinAsync(Ljava/lang/String;Lcom/parse/ParseQuery$State;Lcom/parse/ParseUser;)La/j;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/parse/OfflineQueryController;->networkController:Lcom/parse/ParseQueryController;

    invoke-interface {v0, p1, p2, p3}, Lcom/parse/ParseQueryController;->countAsync(Lcom/parse/ParseQuery$State;Lcom/parse/ParseUser;La/j;)La/j;

    move-result-object v0

    goto :goto_0
.end method

.method public findAsync(Lcom/parse/ParseQuery$State;Lcom/parse/ParseUser;La/j;)La/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Lcom/parse/ParseQuery$State",
            "<TT;>;",
            "Lcom/parse/ParseUser;",
            "La/j",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "La/j",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/parse/ParseQuery$State;->isFromLocalDatastore()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parse/OfflineQueryController;->offlineStore:Lcom/parse/OfflineStore;

    invoke-virtual {p1}, Lcom/parse/ParseQuery$State;->pinName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/parse/OfflineStore;->findFromPinAsync(Ljava/lang/String;Lcom/parse/ParseQuery$State;Lcom/parse/ParseUser;)La/j;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/parse/OfflineQueryController;->networkController:Lcom/parse/ParseQueryController;

    invoke-interface {v0, p1, p2, p3}, Lcom/parse/ParseQueryController;->findAsync(Lcom/parse/ParseQuery$State;Lcom/parse/ParseUser;La/j;)La/j;

    move-result-object v0

    goto :goto_0
.end method
