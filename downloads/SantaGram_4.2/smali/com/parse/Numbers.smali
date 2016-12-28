.class Lcom/parse/Numbers;
.super Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static add(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;
    .locals 4

    instance-of v0, p0, Ljava/lang/Double;

    if-nez v0, :cond_0

    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    instance-of v0, p0, Ljava/lang/Float;

    if-nez v0, :cond_2

    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_3

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    add-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_0

    :cond_3
    instance-of v0, p0, Ljava/lang/Long;

    if-nez v0, :cond_4

    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_5

    :cond_4
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    :cond_5
    instance-of v0, p0, Ljava/lang/Integer;

    if-nez v0, :cond_6

    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_7

    :cond_6
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_7
    instance-of v0, p0, Ljava/lang/Short;

    if-nez v0, :cond_8

    instance-of v0, p1, Ljava/lang/Short;

    if-eqz v0, :cond_9

    :cond_8
    invoke-virtual {p0}, Ljava/lang/Number;->shortValue()S

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Number;->shortValue()S

    move-result v1

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_9
    instance-of v0, p0, Ljava/lang/Byte;

    if-nez v0, :cond_a

    instance-of v0, p1, Ljava/lang/Byte;

    if-eqz v0, :cond_b

    :cond_a
    invoke-virtual {p0}, Ljava/lang/Number;->byteValue()B

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Number;->byteValue()B

    move-result v1

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_b
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unknown number type."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static compare(Ljava/lang/Number;Ljava/lang/Number;)I
    .locals 6

    const-wide/16 v4, 0x0

    instance-of v0, p0, Ljava/lang/Double;

    if-nez v0, :cond_0

    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->signum(D)D

    move-result-wide v0

    double-to-int v0, v0

    :goto_0
    return v0

    :cond_1
    instance-of v0, p0, Ljava/lang/Float;

    if-nez v0, :cond_2

    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_3

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v0

    float-to-int v0, v0

    goto :goto_0

    :cond_3
    instance-of v0, p0, Ljava/lang/Long;

    if-nez v0, :cond_4

    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_7

    :cond_4
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    sub-long/2addr v0, v2

    cmp-long v2, v0, v4

    if-gez v2, :cond_5

    const/4 v0, -0x1

    goto :goto_0

    :cond_5
    cmp-long v0, v0, v4

    if-lez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_0

    :cond_6
    const/4 v0, 0x0

    goto :goto_0

    :cond_7
    instance-of v0, p0, Ljava/lang/Integer;

    if-nez v0, :cond_8

    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_9

    :cond_8
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0

    :cond_9
    instance-of v0, p0, Ljava/lang/Short;

    if-nez v0, :cond_a

    instance-of v0, p1, Ljava/lang/Short;

    if-eqz v0, :cond_b

    :cond_a
    invoke-virtual {p0}, Ljava/lang/Number;->shortValue()S

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Number;->shortValue()S

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0

    :cond_b
    instance-of v0, p0, Ljava/lang/Byte;

    if-nez v0, :cond_c

    instance-of v0, p1, Ljava/lang/Byte;

    if-eqz v0, :cond_d

    :cond_c
    invoke-virtual {p0}, Ljava/lang/Number;->byteValue()B

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Number;->byteValue()B

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0

    :cond_d
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unknown number type."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static subtract(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;
    .locals 4

    instance-of v0, p0, Ljava/lang/Double;

    if-nez v0, :cond_0

    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    instance-of v0, p0, Ljava/lang/Float;

    if-nez v0, :cond_2

    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_3

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_0

    :cond_3
    instance-of v0, p0, Ljava/lang/Long;

    if-nez v0, :cond_4

    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_5

    :cond_4
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    :cond_5
    instance-of v0, p0, Ljava/lang/Integer;

    if-nez v0, :cond_6

    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_7

    :cond_6
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_7
    instance-of v0, p0, Ljava/lang/Short;

    if-nez v0, :cond_8

    instance-of v0, p1, Ljava/lang/Short;

    if-eqz v0, :cond_9

    :cond_8
    invoke-virtual {p0}, Ljava/lang/Number;->shortValue()S

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Number;->shortValue()S

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_9
    instance-of v0, p0, Ljava/lang/Byte;

    if-nez v0, :cond_a

    instance-of v0, p1, Ljava/lang/Byte;

    if-eqz v0, :cond_b

    :cond_a
    invoke-virtual {p0}, Ljava/lang/Number;->byteValue()B

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Number;->byteValue()B

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_b
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unknown number type."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
