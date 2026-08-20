.class public Lcom/android/internal/telephony/data/LinkBandwidthEstimator$NetworkBandwidth;
.super Ljava/lang/Object;
.source "LinkBandwidthEstimator.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/data/LinkBandwidthEstimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NetworkBandwidth"
.end annotation


# instance fields
.field private final blacklist mKey:Ljava/lang/String;

.field final synthetic blacklist this$0:Lcom/android/internal/telephony/data/LinkBandwidthEstimator;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/data/LinkBandwidthEstimator;Ljava/lang/String;)V
    .registers 3

    .line 1233
    iput-object p1, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$NetworkBandwidth;->this$0:Lcom/android/internal/telephony/data/LinkBandwidthEstimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1234
    iput-object p2, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$NetworkBandwidth;->mKey:Ljava/lang/String;

    return-void
.end method

.method private blacklist getCountKey(II)Ljava/lang/String;
    .registers 4

    .line 1256
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$NetworkBandwidth;->getDataKey(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "Count"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private blacklist getDataKey(II)Ljava/lang/String;
    .registers 4

    .line 1260
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1261
    iget-object p0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$NetworkBandwidth;->mKey:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "Link"

    .line 1262
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "Level"

    .line 1263
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1264
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private blacklist getValueKey(II)Ljava/lang/String;
    .registers 4

    .line 1252
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$NetworkBandwidth;->getDataKey(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "Data"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public blacklist getCount(II)I
    .registers 4

    .line 1277
    iget-object v0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$NetworkBandwidth;->this$0:Lcom/android/internal/telephony/data/LinkBandwidthEstimator;

    invoke-static {v0}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/data/LinkBandwidthEstimator;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 1278
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1277
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1279
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$NetworkBandwidth;->getCountKey(II)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    .line 1280
    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public blacklist getValue(II)J
    .registers 4

    .line 1269
    iget-object v0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$NetworkBandwidth;->this$0:Lcom/android/internal/telephony/data/LinkBandwidthEstimator;

    invoke-static {v0}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/data/LinkBandwidthEstimator;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 1270
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1269
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1271
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$NetworkBandwidth;->getValueKey(II)Ljava/lang/String;

    move-result-object p0

    const-wide/16 p1, 0x0

    .line 1272
    invoke-interface {v0, p0, p1, p2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 12

    .line 1285
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1286
    iget-object v1, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$NetworkBandwidth;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    .line 1287
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    move v3, v2

    :goto_11
    const/4 v4, 0x2

    if-ge v3, v4, :cond_5c

    if-nez v3, :cond_19

    const-string v4, "tx"

    goto :goto_1b

    :cond_19
    const-string v4, "rx"

    .line 1289
    :goto_1b
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n avgKbps"

    .line 1290
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v4, v2

    :goto_24
    const-string v5, " "

    const/4 v6, 0x5

    if-ge v4, v6, :cond_41

    .line 1292
    invoke-virtual {p0, v3, v4}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$NetworkBandwidth;->getCount(II)I

    move-result v6

    if-nez v6, :cond_31

    move v6, v2

    goto :goto_38

    .line 1293
    :cond_31
    invoke-virtual {p0, v3, v4}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$NetworkBandwidth;->getValue(II)J

    move-result-wide v7

    int-to-long v9, v6

    div-long/2addr v7, v9

    long-to-int v6, v7

    .line 1294
    :goto_38
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_24

    :cond_41
    const-string v4, "\n count"

    .line 1296
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v4, v2

    :goto_47
    if-ge v4, v6, :cond_56

    .line 1298
    invoke-virtual {p0, v3, v4}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$NetworkBandwidth;->getCount(II)I

    move-result v7

    .line 1299
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_47

    .line 1301
    :cond_56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 1303
    :cond_5c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist update(JII)V
    .registers 9

    .line 1239
    iget-object v0, p0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$NetworkBandwidth;->this$0:Lcom/android/internal/telephony/data/LinkBandwidthEstimator;

    invoke-static {v0}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/data/LinkBandwidthEstimator;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 1240
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1239
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1241
    invoke-direct {p0, p3, p4}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$NetworkBandwidth;->getValueKey(II)Ljava/lang/String;

    move-result-object v1

    .line 1242
    invoke-direct {p0, p3, p4}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator$NetworkBandwidth;->getCountKey(II)Ljava/lang/String;

    move-result-object p0

    .line 1243
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p3

    const-wide/16 v2, 0x0

    .line 1244
    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    const/4 p4, 0x0

    .line 1245
    invoke-interface {v0, p0, p4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p4

    add-long/2addr v2, p1

    .line 1246
    invoke-interface {p3, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    add-int/lit8 p4, p4, 0x1

    .line 1247
    invoke-interface {p3, p0, p4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1248
    invoke-interface {p3}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
