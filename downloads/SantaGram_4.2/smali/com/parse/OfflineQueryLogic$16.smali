.class final Lcom/parse/OfflineQueryLogic$16;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/OfflineQueryLogic;->sort(Ljava/util/List;Lcom/parse/ParseQuery$State;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic val$keys:Ljava/util/List;

.field final synthetic val$nearSphereKey:Ljava/lang/String;

.field final synthetic val$nearSphereValue:Lcom/parse/ParseGeoPoint;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/parse/ParseGeoPoint;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/parse/OfflineQueryLogic$16;->val$nearSphereKey:Ljava/lang/String;

    iput-object p2, p0, Lcom/parse/OfflineQueryLogic$16;->val$nearSphereValue:Lcom/parse/ParseGeoPoint;

    iput-object p3, p0, Lcom/parse/OfflineQueryLogic$16;->val$keys:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/parse/ParseObject;Lcom/parse/ParseObject;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)I"
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/parse/OfflineQueryLogic$16;->val$nearSphereKey:Ljava/lang/String;

    if-eqz v0, :cond_2

    :try_start_0
    iget-object v0, p0, Lcom/parse/OfflineQueryLogic$16;->val$nearSphereKey:Ljava/lang/String;

    # invokes: Lcom/parse/OfflineQueryLogic;->getValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    invoke-static {p1, v0}, Lcom/parse/OfflineQueryLogic;->access$200(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseGeoPoint;

    iget-object v1, p0, Lcom/parse/OfflineQueryLogic$16;->val$nearSphereKey:Ljava/lang/String;

    # invokes: Lcom/parse/OfflineQueryLogic;->getValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    invoke-static {p2, v1}, Lcom/parse/OfflineQueryLogic;->access$200(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parse/ParseGeoPoint;
    :try_end_0
    .catch Lcom/parse/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v4, p0, Lcom/parse/OfflineQueryLogic$16;->val$nearSphereValue:Lcom/parse/ParseGeoPoint;

    invoke-virtual {v0, v4}, Lcom/parse/ParseGeoPoint;->distanceInRadiansTo(Lcom/parse/ParseGeoPoint;)D

    move-result-wide v4

    iget-object v0, p0, Lcom/parse/OfflineQueryLogic$16;->val$nearSphereValue:Lcom/parse/ParseGeoPoint;

    invoke-virtual {v1, v0}, Lcom/parse/ParseGeoPoint;->distanceInRadiansTo(Lcom/parse/ParseGeoPoint;)D

    move-result-wide v0

    cmpl-double v6, v4, v0

    if-eqz v6, :cond_2

    sub-double v0, v4, v0

    const-wide/16 v4, 0x0

    cmpl-double v0, v0, v4

    if-lez v0, :cond_1

    move v0, v2

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    const/4 v0, -0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/parse/OfflineQueryLogic$16;->val$keys:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    move v1, v2

    :goto_1
    :try_start_1
    # invokes: Lcom/parse/OfflineQueryLogic;->getValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    invoke-static {p1, v0}, Lcom/parse/OfflineQueryLogic;->access$200(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    # invokes: Lcom/parse/OfflineQueryLogic;->getValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    invoke-static {p2, v0}, Lcom/parse/OfflineQueryLogic;->access$200(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_1
    .catch Lcom/parse/ParseException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v6

    :try_start_2
    # invokes: Lcom/parse/OfflineQueryLogic;->compareTo(Ljava/lang/Object;Ljava/lang/Object;)I
    invoke-static {v5, v6}, Lcom/parse/OfflineQueryLogic;->access$000(Ljava/lang/Object;Ljava/lang/Object;)I
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v0

    if-eqz v0, :cond_3

    if-eqz v1, :cond_0

    neg-int v0, v0

    goto :goto_0

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_2
    move-exception v1

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Unable to sort by key %s."

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-static {v5, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    :cond_4
    move v0, v3

    goto :goto_0

    :cond_5
    move v1, v3

    goto :goto_1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/parse/ParseObject;

    check-cast p2, Lcom/parse/ParseObject;

    invoke-virtual {p0, p1, p2}, Lcom/parse/OfflineQueryLogic$16;->compare(Lcom/parse/ParseObject;Lcom/parse/ParseObject;)I

    move-result v0

    return v0
.end method
