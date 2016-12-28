.class final Lcom/parse/ParseAnalytics$2;
.super Ljava/lang/Object;

# interfaces
.implements La/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseAnalytics;->trackEventInBackground(Ljava/lang/String;Ljava/util/Map;)La/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "La/h",
        "<",
        "Ljava/lang/String;",
        "La/j",
        "<",
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic val$dimensionsCopy:Ljava/util/Map;

.field final synthetic val$name:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/parse/ParseAnalytics$2;->val$name:Ljava/lang/String;

    iput-object p2, p0, Lcom/parse/ParseAnalytics$2;->val$dimensionsCopy:Ljava/util/Map;

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
            "Ljava/lang/String;",
            ">;)",
            "La/j",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, La/j;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {}, Lcom/parse/ParseAnalytics;->getAnalyticsController()Lcom/parse/ParseAnalyticsController;

    move-result-object v1

    iget-object v2, p0, Lcom/parse/ParseAnalytics$2;->val$name:Ljava/lang/String;

    iget-object v3, p0, Lcom/parse/ParseAnalytics$2;->val$dimensionsCopy:Ljava/util/Map;

    invoke-virtual {v1, v2, v3, v0}, Lcom/parse/ParseAnalyticsController;->trackEventInBackground(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)La/j;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic then(La/j;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/parse/ParseAnalytics$2;->then(La/j;)La/j;

    move-result-object v0

    return-object v0
.end method
