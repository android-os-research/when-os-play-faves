.class public final Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;
.super Ljava/lang/Object;
.source "JobStore.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/JobStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ReadJobMapFromDiskRunnable"
.end annotation


# instance fields
.field public final jobSet:Lcom/android/server/job/JobStore$JobSet;

.field public final rtcGood:Z

.field public final synthetic this$0:Lcom/android/server/job/JobStore;


# direct methods
.method public constructor <init>(Lcom/android/server/job/JobStore;Lcom/android/server/job/JobStore$JobSet;Z)V
    .registers 4

    .line 707
    iput-object p1, p0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->this$0:Lcom/android/server/job/JobStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 708
    iput-object p2, p0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->jobSet:Lcom/android/server/job/JobStore$JobSet;

    .line 709
    iput-boolean p3, p0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->rtcGood:Z

    return-void
.end method


# virtual methods
.method public final buildBuilderFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/app/job/JobInfo$Builder;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    const/4 p0, 0x0

    const-string/jumbo v0, "jobid"

    .line 1047
    invoke-interface {p1, p0, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const-string/jumbo v1, "package"

    .line 1048
    invoke-interface {p1, p0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "class"

    .line 1049
    invoke-interface {p1, p0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1050
    new-instance p1, Landroid/content/ComponentName;

    invoke-direct {p1, v1, p0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1052
    new-instance p0, Landroid/app/job/JobInfo$Builder;

    invoke-direct {p0, v0, p1}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    return-object p0
.end method

.method public final buildConstraintsFromXml(Landroid/app/job/JobInfo$Builder;Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p0, 0x0

    const-string/jumbo v0, "net-capabilities-csv"

    .line 1073
    invoke-interface {p2, p0, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "net-forbidden-capabilities-csv"

    .line 1075
    invoke-interface {p2, p0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "net-transport-types-csv"

    .line 1077
    invoke-interface {p2, p0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_1f

    if-nez v2, :cond_1b

    goto :goto_1f

    :cond_1b
    move-object v3, p0

    move-object v4, v3

    move-object v5, v4

    goto :goto_34

    :cond_1f
    :goto_1f
    const-string/jumbo v3, "net-capabilities"

    .line 1080
    invoke-interface {p2, p0, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "net-unwanted-capabilities"

    .line 1081
    invoke-interface {p2, p0, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "net-transport-types"

    .line 1083
    invoke-interface {p2, p0, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :goto_34
    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v0, :cond_7b

    if-eqz v2, :cond_7b

    .line 1087
    new-instance v3, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v3}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 1088
    invoke-virtual {v3}, Landroid/net/NetworkRequest$Builder;->clearCapabilities()Landroid/net/NetworkRequest$Builder;

    move-result-object v3

    .line 1090
    invoke-static {v0}, Lcom/android/server/job/JobStore;->stringToIntArray(Ljava/lang/String;)[I

    move-result-object v0

    array-length v4, v0

    move v5, v6

    :goto_49
    if-ge v5, v4, :cond_53

    aget v8, v0, v5

    .line 1091
    invoke-virtual {v3, v8}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_49

    .line 1094
    :cond_53
    invoke-static {v1}, Lcom/android/server/job/JobStore;->stringToIntArray(Ljava/lang/String;)[I

    move-result-object v0

    array-length v1, v0

    move v4, v6

    :goto_59
    if-ge v4, v1, :cond_63

    aget v5, v0, v4

    .line 1095
    invoke-virtual {v3, v5}, Landroid/net/NetworkRequest$Builder;->addForbiddenCapability(I)Landroid/net/NetworkRequest$Builder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_59

    .line 1098
    :cond_63
    invoke-static {v2}, Lcom/android/server/job/JobStore;->stringToIntArray(Ljava/lang/String;)[I

    move-result-object v0

    array-length v1, v0

    :goto_68
    if-ge v6, v1, :cond_72

    aget v2, v0, v6

    .line 1099
    invoke-virtual {v3, v2}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_68

    .line 1101
    :cond_72
    invoke-virtual {v3}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/job/JobInfo$Builder;->setRequiredNetwork(Landroid/net/NetworkRequest;)Landroid/app/job/JobInfo$Builder;

    goto/16 :goto_106

    :cond_7b
    if-eqz v3, :cond_d4

    if-eqz v5, :cond_d4

    .line 1103
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 1104
    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->clearCapabilities()Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    .line 1107
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/android/internal/util/jobs/BitUtils;->unpackBits(J)[I

    move-result-object v1

    array-length v2, v1

    move v3, v6

    :goto_92
    const/16 v8, 0x19

    if-ge v3, v2, :cond_a0

    aget v9, v1, v3

    if-gt v9, v8, :cond_9d

    .line 1110
    invoke-virtual {v0, v9}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    :cond_9d
    add-int/lit8 v3, v3, 0x1

    goto :goto_92

    .line 1113
    :cond_a0
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/android/internal/util/jobs/BitUtils;->unpackBits(J)[I

    move-result-object v1

    array-length v2, v1

    move v3, v6

    :goto_aa
    if-ge v3, v2, :cond_b6

    aget v4, v1, v3

    if-gt v4, v8, :cond_b3

    .line 1116
    invoke-virtual {v0, v4}, Landroid/net/NetworkRequest$Builder;->addForbiddenCapability(I)Landroid/net/NetworkRequest$Builder;

    :cond_b3
    add-int/lit8 v3, v3, 0x1

    goto :goto_aa

    .line 1121
    :cond_b6
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/android/internal/util/jobs/BitUtils;->unpackBits(J)[I

    move-result-object v1

    array-length v2, v1

    :goto_bf
    if-ge v6, v2, :cond_cc

    aget v3, v1, v6

    const/4 v4, 0x7

    if-gt v3, v4, :cond_c9

    .line 1124
    invoke-virtual {v0, v3}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    :cond_c9
    add-int/lit8 v6, v6, 0x1

    goto :goto_bf

    .line 1127
    :cond_cc
    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/job/JobInfo$Builder;->setRequiredNetwork(Landroid/net/NetworkRequest;)Landroid/app/job/JobInfo$Builder;

    goto :goto_106

    :cond_d4
    const-string v0, "connectivity"

    .line 1130
    invoke-interface {p2, p0, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_df

    .line 1132
    invoke-virtual {p1, v7}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    :cond_df
    const-string/jumbo v0, "metered"

    .line 1134
    invoke-interface {p2, p0, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_ec

    const/4 v0, 0x4

    .line 1136
    invoke-virtual {p1, v0}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    :cond_ec
    const-string/jumbo v0, "unmetered"

    .line 1138
    invoke-interface {p2, p0, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_f9

    const/4 v0, 0x2

    .line 1140
    invoke-virtual {p1, v0}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    :cond_f9
    const-string/jumbo v0, "not-roaming"

    .line 1142
    invoke-interface {p2, p0, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_106

    const/4 v0, 0x3

    .line 1144
    invoke-virtual {p1, v0}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    :cond_106
    :goto_106
    const-string/jumbo v0, "idle"

    .line 1148
    invoke-interface {p2, p0, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_112

    .line 1150
    invoke-virtual {p1, v7}, Landroid/app/job/JobInfo$Builder;->setRequiresDeviceIdle(Z)Landroid/app/job/JobInfo$Builder;

    :cond_112
    const-string v0, "charging"

    .line 1152
    invoke-interface {p2, p0, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_11d

    .line 1154
    invoke-virtual {p1, v7}, Landroid/app/job/JobInfo$Builder;->setRequiresCharging(Z)Landroid/app/job/JobInfo$Builder;

    :cond_11d
    const-string v0, "battery-not-low"

    .line 1156
    invoke-interface {p2, p0, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_128

    .line 1158
    invoke-virtual {p1, v7}, Landroid/app/job/JobInfo$Builder;->setRequiresBatteryNotLow(Z)Landroid/app/job/JobInfo$Builder;

    :cond_128
    const-string/jumbo v0, "storage-not-low"

    .line 1160
    invoke-interface {p2, p0, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_134

    .line 1162
    invoke-virtual {p1, v7}, Landroid/app/job/JobInfo$Builder;->setRequiresStorageNotLow(Z)Landroid/app/job/JobInfo$Builder;

    :cond_134
    return-void
.end method

.method public final buildRtcExecutionTimesFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/Pair;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    const/4 p0, 0x0

    const-string v0, "delay"

    .line 1195
    invoke-interface {p1, p0, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 1197
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_10

    :cond_e
    const-wide/16 v0, 0x0

    :goto_10
    const-string v2, "deadline"

    .line 1199
    invoke-interface {p1, p0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1d

    .line 1201
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0

    goto :goto_22

    :cond_1d
    const-wide p0, 0x7fffffffffffffffL

    .line 1203
    :goto_22
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public final maybeBuildBackoffPolicyFromXml(Landroid/app/job/JobInfo$Builder;Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 6

    const/4 p0, 0x0

    const-string/jumbo v0, "initial-backoff"

    .line 1171
    invoke-interface {p2, p0, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 1173
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    const-string v2, "backoff-policy"

    .line 1174
    invoke-interface {p2, p0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1175
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    .line 1176
    invoke-virtual {p1, v0, v1, p0}, Landroid/app/job/JobInfo$Builder;->setBackoffCriteria(JI)Landroid/app/job/JobInfo$Builder;

    :cond_1b
    return-void
.end method

.method public final readJobMapImpl(Ljava/io/InputStream;Z)Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "Invalid version number, aborting jobs file read."

    .line 761
    invoke-static {p1}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Landroid/util/TypedXmlPullParser;

    move-result-object p1

    .line 763
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    :goto_a
    const/4 v2, 0x2

    const/4 v3, 0x1

    const-string v4, "JobStore"

    if-eq v1, v2, :cond_2f

    if-eq v1, v3, :cond_2f

    .line 766
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 767
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Start tag: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    :cond_2f
    const/4 v5, 0x0

    if-ne v1, v3, :cond_3e

    .line 770
    invoke-static {}, Lcom/android/server/job/JobStore;->-$$Nest$sfgetDEBUG()Z

    move-result p0

    if-eqz p0, :cond_3d

    const-string p0, "No persisted jobs."

    .line 771
    invoke-static {v4, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3d
    return-object v5

    .line 776
    :cond_3e
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v6, "job-info"

    .line 777
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_aa

    .line 778
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :try_start_50
    const-string/jumbo v6, "version"

    .line 782
    invoke-interface {p1, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6
    :try_end_5b
    .catch Ljava/lang/NumberFormatException; {:try_start_50 .. :try_end_5b} :catch_a7

    if-gt v6, v3, :cond_a3

    if-gez v6, :cond_60

    goto :goto_a3

    .line 791
    :cond_60
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    :cond_64
    if-ne v0, v2, :cond_9c

    .line 795
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v5, "job"

    .line 797
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9c

    .line 798
    invoke-virtual {p0, p2, p1, v6}, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->restoreJobFromXml(ZLorg/xmlpull/v1/XmlPullParser;I)Lcom/android/server/job/controllers/JobStatus;

    move-result-object v0

    if-eqz v0, :cond_97

    .line 800
    invoke-static {}, Lcom/android/server/job/JobStore;->-$$Nest$sfgetDEBUG()Z

    move-result v5

    if-eqz v5, :cond_93

    .line 801
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Read out "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    :cond_93
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9c

    :cond_97
    const-string v0, "Error reading job from file."

    .line 805
    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    :cond_9c
    :goto_9c
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    if-ne v0, v3, :cond_64

    return-object v1

    .line 784
    :cond_a3
    :goto_a3
    :try_start_a3
    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a6
    .catch Ljava/lang/NumberFormatException; {:try_start_a3 .. :try_end_a6} :catch_a7

    return-object v5

    .line 788
    :catch_a7
    invoke-static {v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_aa
    return-object v5
.end method

.method public final restoreJobFromXml(ZLorg/xmlpull/v1/XmlPullParser;I)Lcom/android/server/job/controllers/JobStatus;
    .registers 37
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    const-string v3, "JobStore"

    const/4 v4, 0x0

    .line 831
    :try_start_9
    invoke-virtual {v0, v1}, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->buildBuilderFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/app/job/JobInfo$Builder;

    move-result-object v5

    const/4 v6, 0x1

    .line 832
    invoke-virtual {v5, v6}, Landroid/app/job/JobInfo$Builder;->setPersisted(Z)Landroid/app/job/JobInfo$Builder;

    const-string/jumbo v7, "uid"

    .line 833
    invoke-interface {v1, v4, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10
    :try_end_1c
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_1c} :catch_2e8

    const-string/jumbo v7, "priority"

    if-nez v2, :cond_2f

    .line 837
    :try_start_21
    invoke-interface {v1, v4, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4d

    .line 839
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v5, v2}, Landroid/app/job/JobInfo$Builder;->setBias(I)Landroid/app/job/JobInfo$Builder;

    goto :goto_4d

    :cond_2f
    if-lt v2, v6, :cond_4d

    const-string v2, "bias"

    .line 842
    invoke-interface {v1, v4, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_40

    .line 844
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v5, v2}, Landroid/app/job/JobInfo$Builder;->setBias(I)Landroid/app/job/JobInfo$Builder;

    .line 846
    :cond_40
    invoke-interface {v1, v4, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4d

    .line 848
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v5, v2}, Landroid/app/job/JobInfo$Builder;->setPriority(I)Landroid/app/job/JobInfo$Builder;

    :cond_4d
    :goto_4d
    const-string v2, "flags"

    .line 851
    invoke-interface {v1, v4, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5c

    .line 853
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v5, v2}, Landroid/app/job/JobInfo$Builder;->setFlags(I)Landroid/app/job/JobInfo$Builder;

    :cond_5c
    const-string/jumbo v2, "internalFlags"

    .line 855
    invoke-interface {v1, v4, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6c

    .line 857
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    move/from16 v24, v2

    goto :goto_6e

    :cond_6c
    const/16 v24, 0x0

    :goto_6e
    const-string/jumbo v2, "sourceUserId"

    .line 859
    invoke-interface {v1, v4, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_79

    const/4 v2, -0x1

    goto :goto_7d

    .line 860
    :cond_79
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    :goto_7d
    move v12, v2

    const-string/jumbo v2, "lastSuccessfulRunTime"

    .line 862
    invoke-interface {v1, v4, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_8a

    const-wide/16 v19, 0x0

    goto :goto_90

    .line 863
    :cond_8a
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v13

    move-wide/from16 v19, v13

    :goto_90
    const-string/jumbo v2, "lastFailedRunTime"

    .line 865
    invoke-interface {v1, v4, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_9c

    const-wide/16 v21, 0x0

    goto :goto_a2

    .line 866
    :cond_9c
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v13
    :try_end_a0
    .catch Ljava/lang/NumberFormatException; {:try_start_21 .. :try_end_a0} :catch_2e8

    move-wide/from16 v21, v13

    :goto_a2
    const-string/jumbo v2, "sourcePackageName"

    .line 872
    invoke-interface {v1, v4, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v11, "sourceTag"

    .line 873
    invoke-interface {v1, v4, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 878
    :cond_b0
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v11

    const/4 v13, 0x4

    if-eq v11, v13, :cond_b0

    const/4 v15, 0x2

    if-ne v11, v15, :cond_2e7

    .line 882
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    const-string v8, "constraints"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_c8

    goto/16 :goto_2e7

    .line 887
    :cond_c8
    :try_start_c8
    invoke-virtual {v0, v5, v1}, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->buildConstraintsFromXml(Landroid/app/job/JobInfo$Builder;Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_cb
    .catch Ljava/lang/NumberFormatException; {:try_start_c8 .. :try_end_cb} :catch_2e2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_c8 .. :try_end_cb} :catch_2da
    .catch Ljava/io/IOException; {:try_start_c8 .. :try_end_cb} :catch_2d2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c8 .. :try_end_cb} :catch_2ca

    .line 902
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 906
    :goto_ce
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    if-eq v8, v13, :cond_2c5

    if-eq v8, v15, :cond_d7

    return-object v4

    .line 915
    :cond_d7
    :try_start_d7
    invoke-virtual {v0, v1}, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->buildRtcExecutionTimesFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/Pair;

    move-result-object v8
    :try_end_db
    .catch Ljava/lang/NumberFormatException; {:try_start_d7 .. :try_end_db} :catch_2b9

    .line 923
    sget-object v9, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    move-object/from16 p3, v14

    invoke-virtual {v9}, Ljava/time/Clock;->millis()J

    move-result-wide v13

    .line 924
    invoke-static {v8, v13, v14}, Lcom/android/server/job/JobStore;->-$$Nest$smconvertRtcBoundsToElapsed(Landroid/util/Pair;J)Landroid/util/Pair;

    move-result-object v9

    .line 926
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v15, "periodic"

    invoke-virtual {v15, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_18f

    :try_start_f4
    const-string/jumbo v11, "period"

    .line 928
    invoke-interface {v1, v4, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 929
    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    const-string v11, "flex"

    .line 930
    invoke-interface {v1, v4, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_114

    .line 931
    invoke-static {v11}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    move/from16 v26, v12

    move-wide/from16 v11, v16

    goto :goto_117

    :cond_114
    move/from16 v26, v12

    move-wide v11, v6

    .line 932
    :goto_117
    invoke-virtual {v5, v6, v7, v11, v12}, Landroid/app/job/JobInfo$Builder;->setPeriodic(JJ)Landroid/app/job/JobInfo$Builder;

    .line 937
    iget-object v15, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v15, Ljava/lang/Long;

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v27

    add-long v29, v13, v6

    add-long v29, v29, v11

    cmp-long v15, v27, v29

    if-lez v15, :cond_1d5

    add-long v27, v13, v11

    add-long v27, v27, v6

    sub-long v6, v27, v11

    const-string v12, "Periodic job for uid=\'%d\' persisted run-time is too big [%s, %s]. Clamping to [%s,%s]"

    const/4 v11, 0x5

    new-array v15, v11, [Ljava/lang/Object;

    .line 945
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/16 v17, 0x0

    aput-object v11, v15, v17

    iget-object v11, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Long;

    .line 946
    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v29

    const-wide/16 v31, 0x3e8

    div-long v29, v29, v31

    invoke-static/range {v29 .. v30}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v11

    const/16 v16, 0x1

    aput-object v11, v15, v16

    iget-object v9, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Long;

    .line 947
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    div-long v16, v16, v31

    invoke-static/range {v16 .. v17}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v9

    const/4 v11, 0x2

    aput-object v9, v15, v11

    const/4 v9, 0x3

    div-long v16, v6, v31

    .line 948
    invoke-static/range {v16 .. v17}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v15, v9

    div-long v16, v27, v31

    .line 950
    invoke-static/range {v16 .. v17}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v9

    const/4 v11, 0x4

    aput-object v9, v15, v11

    .line 943
    invoke-static {v12, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 942
    invoke-static {v3, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 954
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static/range {v27 .. v28}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v6
    :try_end_187
    .catch Ljava/lang/NumberFormatException; {:try_start_f4 .. :try_end_187} :catch_189

    move-object v9, v6

    goto :goto_1d5

    :catch_189
    const-string v0, "Error reading periodic execution criteria, skipping."

    .line 957
    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    :cond_18f
    move/from16 v26, v12

    .line 960
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "one-off"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_29a

    .line 962
    :try_start_19e
    iget-object v6, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-wide/16 v17, 0x0

    cmp-long v6, v6, v17

    if-eqz v6, :cond_1b8

    .line 963
    iget-object v6, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long/2addr v6, v13

    invoke-virtual {v5, v6, v7}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    .line 965
    :cond_1b8
    iget-object v6, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-wide v15, 0x7fffffffffffffffL

    cmp-long v6, v6, v15

    if-eqz v6, :cond_1d5

    .line 966
    iget-object v6, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Long;

    .line 967
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long/2addr v6, v13

    .line 966
    invoke-virtual {v5, v6, v7}, Landroid/app/job/JobInfo$Builder;->setOverrideDeadline(J)Landroid/app/job/JobInfo$Builder;
    :try_end_1d5
    .catch Ljava/lang/NumberFormatException; {:try_start_19e .. :try_end_1d5} :catch_294

    .line 980
    :cond_1d5
    :goto_1d5
    invoke-virtual {v0, v5, v1}, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->maybeBuildBackoffPolicyFromXml(Landroid/app/job/JobInfo$Builder;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 982
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 986
    :cond_1db
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    const/4 v6, 0x4

    if-eq v0, v6, :cond_1db

    const/4 v7, 0x2

    if-ne v0, v7, :cond_288

    .line 989
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v6, "extras"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f3

    goto/16 :goto_288

    .line 998
    :cond_1f3
    :try_start_1f3
    invoke-static/range {p2 .. p2}, Landroid/os/PersistableBundle;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/os/PersistableBundle;

    move-result-object v0

    .line 999
    invoke-virtual {v5, v0}, Landroid/app/job/JobInfo$Builder;->setExtras(Landroid/os/PersistableBundle;)Landroid/app/job/JobInfo$Builder;
    :try_end_1fa
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1f3 .. :try_end_1fa} :catch_281

    .line 1004
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    const/4 v11, 0x0

    .line 1016
    :try_start_1fe
    invoke-virtual {v5, v11}, Landroid/app/job/JobInfo$Builder;->build(Z)Landroid/app/job/JobInfo;

    move-result-object v1
    :try_end_202
    .catch Ljava/lang/Exception; {:try_start_1fe .. :try_end_202} :catch_266

    const-string v5, "android"

    .line 1023
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_23c

    if-eqz v0, :cond_23c

    const-string v5, "SyncManagerJob"

    .line 1025
    invoke-virtual {v0, v5, v11}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_23c

    const-string/jumbo v5, "owningPackage"

    .line 1026
    invoke-virtual {v0, v5, v2}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1027
    invoke-static {}, Lcom/android/server/job/JobStore;->-$$Nest$sfgetDEBUG()Z

    move-result v2

    if-eqz v2, :cond_23a

    .line 1028
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Fixing up sync job source package name from \'android\' to \'"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\'"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_23a
    move-object v11, v0

    goto :goto_23d

    :cond_23c
    move-object v11, v2

    :goto_23d
    move/from16 v12, v26

    .line 1034
    invoke-static {v11, v12, v13, v14}, Lcom/android/server/job/JobSchedulerService;->standbyBucketForPackage(Ljava/lang/String;IJ)I

    move-result v13

    .line 1036
    new-instance v0, Lcom/android/server/job/controllers/JobStatus;

    iget-object v2, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    .line 1039
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    iget-object v2, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    if-eqz p1, :cond_25a

    move-object/from16 v23, v4

    goto :goto_25c

    :cond_25a
    move-object/from16 v23, v8

    :goto_25c
    const/16 v25, 0x0

    move-object v8, v0

    move-object v9, v1

    move-object/from16 v14, p3

    .line 1041
    invoke-direct/range {v8 .. v25}, Lcom/android/server/job/controllers/JobStatus;-><init>(Landroid/app/job/JobInfo;ILjava/lang/String;IILjava/lang/String;JJJJLandroid/util/Pair;II)V

    return-object v0

    :catch_266
    move-exception v0

    move-object v1, v0

    .line 1018
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to build job from XML, ignoring: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroid/app/job/JobInfo$Builder;->summarize()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v4

    :catch_281
    move-exception v0

    const-string v1, "Persisted extras contained invalid data"

    .line 1001
    invoke-static {v3, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v4

    .line 990
    :cond_288
    :goto_288
    invoke-static {}, Lcom/android/server/job/JobStore;->-$$Nest$sfgetDEBUG()Z

    move-result v0

    if-eqz v0, :cond_293

    const-string v0, "Error reading extras, skipping."

    .line 991
    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_293
    return-object v4

    :catch_294
    const-string v0, "Error reading job execution criteria, skipping."

    .line 970
    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    .line 974
    :cond_29a
    invoke-static {}, Lcom/android/server/job/JobStore;->-$$Nest$sfgetDEBUG()Z

    move-result v0

    if-eqz v0, :cond_2b8

    .line 975
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid parameter tag, skipping - "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2b8
    return-object v4

    .line 917
    :catch_2b9
    invoke-static {}, Lcom/android/server/job/JobStore;->-$$Nest$sfgetDEBUG()Z

    move-result v0

    if-eqz v0, :cond_2c4

    const-string v0, "Error parsing execution time parameters, skipping."

    .line 918
    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2c4
    return-object v4

    :cond_2c5
    const/4 v11, 0x0

    const-wide/16 v17, 0x0

    goto/16 :goto_ce

    :catch_2ca
    move-exception v0

    move-object v1, v0

    const-string v0, "Constraints contained invalid data"

    .line 898
    invoke-static {v3, v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v4

    :catch_2d2
    move-exception v0

    move-object v1, v0

    const-string v0, "Error I/O Exception."

    .line 895
    invoke-static {v3, v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v4

    :catch_2da
    move-exception v0

    move-object v1, v0

    const-string v0, "Error Parser Exception."

    .line 892
    invoke-static {v3, v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v4

    :catch_2e2
    const-string v0, "Error reading constraints, skipping."

    .line 889
    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2e7
    :goto_2e7
    return-object v4

    :catch_2e8
    const-string v0, "Error parsing job\'s required fields, skipping"

    .line 868
    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4
.end method

.method public run()V
    .registers 13

    const/4 v0, 0x0

    .line 718
    :try_start_1
    iget-object v1, p0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {v1}, Lcom/android/server/job/JobStore;->-$$Nest$fgetmJobsFile(Lcom/android/server/job/JobStore;)Landroid/util/AtomicFile;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v1
    :try_end_b
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_b} :catch_db
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_b} :catch_c6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_b} :catch_c6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_b} :catch_b1
    .catchall {:try_start_1 .. :try_end_b} :catchall_ad

    .line 719
    :try_start_b
    iget-object v2, p0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->this$0:Lcom/android/server/job/JobStore;

    iget-object v2, v2, Lcom/android/server/job/JobStore;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_10
    .catchall {:try_start_b .. :try_end_10} :catchall_91

    .line 720
    :try_start_10
    iget-boolean v3, p0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->rtcGood:Z

    invoke-virtual {p0, v1, v3}, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->readJobMapImpl(Ljava/io/InputStream;Z)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_50

    .line 722
    sget-object v4, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v4}, Ljava/time/Clock;->millis()J

    move-result-wide v4
    :try_end_1e
    .catchall {:try_start_10 .. :try_end_1e} :catchall_86

    move v6, v0

    move v7, v6

    move v8, v7

    .line 723
    :goto_21
    :try_start_21
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v9

    if-ge v0, v9, :cond_4e

    .line 724
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/job/controllers/JobStatus;

    .line 725
    invoke-virtual {v9}, Lcom/android/server/job/controllers/JobStatus;->prepareLocked()V

    .line 726
    iput-wide v4, v9, Lcom/android/server/job/controllers/JobStatus;->enqueueTime:J

    .line 727
    iget-object v10, p0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->jobSet:Lcom/android/server/job/JobStore$JobSet;

    invoke-virtual {v10, v9}, Lcom/android/server/job/JobStore$JobSet;->add(Lcom/android/server/job/controllers/JobStatus;)Z

    add-int/lit8 v6, v6, 0x1

    .line 730
    invoke-virtual {v9}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v10

    const/16 v11, 0x3e8

    if-ne v10, v11, :cond_4b

    add-int/lit8 v7, v7, 0x1

    .line 732
    invoke-static {v9}, Lcom/android/server/job/JobStore;->-$$Nest$smisSyncJob(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v9
    :try_end_47
    .catchall {:try_start_21 .. :try_end_47} :catchall_8f

    if-eqz v9, :cond_4b

    add-int/lit8 v8, v8, 0x1

    :cond_4b
    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    :cond_4e
    move v0, v6

    goto :goto_52

    :cond_50
    move v7, v0

    move v8, v7

    .line 738
    :goto_52
    :try_start_52
    monitor-exit v2
    :try_end_53
    .catchall {:try_start_52 .. :try_end_53} :catchall_83

    if-eqz v1, :cond_5f

    .line 739
    :try_start_55
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_58
    .catch Ljava/io/FileNotFoundException; {:try_start_55 .. :try_end_58} :catch_dd
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_55 .. :try_end_58} :catch_5c
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_58} :catch_5c
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_58} :catch_59
    .catchall {:try_start_55 .. :try_end_58} :catchall_112

    goto :goto_5f

    :catch_59
    move-exception v1

    goto/16 :goto_b4

    :catch_5c
    move-exception v1

    goto/16 :goto_c9

    .line 750
    :cond_5f
    :goto_5f
    iget-object v1, p0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {v1}, Lcom/android/server/job/JobStore;->-$$Nest$fgetmPersistInfo(Lcom/android/server/job/JobStore;)Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    move-result-object v1

    iget v1, v1, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countAllJobsLoaded:I

    if-gez v1, :cond_f6

    .line 751
    :goto_69
    iget-object v1, p0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {v1}, Lcom/android/server/job/JobStore;->-$$Nest$fgetmPersistInfo(Lcom/android/server/job/JobStore;)Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    move-result-object v1

    iput v0, v1, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countAllJobsLoaded:I

    .line 752
    iget-object v1, p0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {v1}, Lcom/android/server/job/JobStore;->-$$Nest$fgetmPersistInfo(Lcom/android/server/job/JobStore;)Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    move-result-object v1

    iput v7, v1, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countSystemServerJobsLoaded:I

    .line 753
    iget-object p0, p0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {p0}, Lcom/android/server/job/JobStore;->-$$Nest$fgetmPersistInfo(Lcom/android/server/job/JobStore;)Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    move-result-object p0

    iput v8, p0, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countSystemSyncManagerJobsLoaded:I

    goto/16 :goto_f6

    :catchall_83
    move-exception v3

    move v6, v0

    goto :goto_8a

    :catchall_86
    move-exception v3

    move v6, v0

    move v7, v6

    move v8, v7

    :goto_8a
    move-object v0, v3

    .line 738
    :goto_8b
    :try_start_8b
    monitor-exit v2
    :try_end_8c
    .catchall {:try_start_8b .. :try_end_8c} :catchall_8f

    :try_start_8c
    throw v0
    :try_end_8d
    .catchall {:try_start_8c .. :try_end_8d} :catchall_8d

    :catchall_8d
    move-exception v0

    goto :goto_96

    :catchall_8f
    move-exception v0

    goto :goto_8b

    :catchall_91
    move-exception v2

    move v6, v0

    move v7, v6

    move v8, v7

    move-object v0, v2

    :goto_96
    if-eqz v1, :cond_a0

    .line 718
    :try_start_98
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_9b
    .catchall {:try_start_98 .. :try_end_9b} :catchall_9c

    goto :goto_a0

    :catchall_9c
    move-exception v1

    :try_start_9d
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_a0
    :goto_a0
    throw v0
    :try_end_a1
    .catch Ljava/io/FileNotFoundException; {:try_start_9d .. :try_end_a1} :catch_ab
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9d .. :try_end_a1} :catch_a8
    .catch Ljava/io/IOException; {:try_start_9d .. :try_end_a1} :catch_a8
    .catch Ljava/lang/Exception; {:try_start_9d .. :try_end_a1} :catch_a5
    .catchall {:try_start_9d .. :try_end_a1} :catchall_a1

    :catchall_a1
    move-exception v1

    move v0, v6

    goto/16 :goto_113

    :catch_a5
    move-exception v1

    move v0, v6

    goto :goto_b4

    :catch_a8
    move-exception v1

    move v0, v6

    goto :goto_c9

    :catch_ab
    move v0, v6

    goto :goto_dd

    :catchall_ad
    move-exception v1

    move v7, v0

    move v8, v7

    goto :goto_113

    :catch_b1
    move-exception v1

    move v7, v0

    move v8, v7

    :goto_b4
    :try_start_b4
    const-string v2, "JobStore"

    const-string v3, "Unexpected exception"

    .line 748
    invoke-static {v2, v3, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_bb
    .catchall {:try_start_b4 .. :try_end_bb} :catchall_112

    .line 750
    iget-object v1, p0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {v1}, Lcom/android/server/job/JobStore;->-$$Nest$fgetmPersistInfo(Lcom/android/server/job/JobStore;)Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    move-result-object v1

    iget v1, v1, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countAllJobsLoaded:I

    if-gez v1, :cond_f6

    goto :goto_69

    :catch_c6
    move-exception v1

    move v7, v0

    move v8, v7

    :goto_c9
    :try_start_c9
    const-string v2, "JobStore"

    const-string v3, "Error jobstore xml."

    .line 744
    invoke-static {v2, v3, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_d0
    .catchall {:try_start_c9 .. :try_end_d0} :catchall_112

    .line 750
    iget-object v1, p0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {v1}, Lcom/android/server/job/JobStore;->-$$Nest$fgetmPersistInfo(Lcom/android/server/job/JobStore;)Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    move-result-object v1

    iget v1, v1, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countAllJobsLoaded:I

    if-gez v1, :cond_f6

    goto :goto_69

    :catch_db
    move v7, v0

    move v8, v7

    .line 740
    :catch_dd
    :goto_dd
    :try_start_dd
    invoke-static {}, Lcom/android/server/job/JobStore;->-$$Nest$sfgetDEBUG()Z

    move-result v1

    if-eqz v1, :cond_ea

    const-string v1, "JobStore"

    const-string v2, "Could not find jobs file, probably there was nothing to load."

    .line 741
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ea
    .catchall {:try_start_dd .. :try_end_ea} :catchall_112

    .line 750
    :cond_ea
    iget-object v1, p0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {v1}, Lcom/android/server/job/JobStore;->-$$Nest$fgetmPersistInfo(Lcom/android/server/job/JobStore;)Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    move-result-object v1

    iget v1, v1, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countAllJobsLoaded:I

    if-gez v1, :cond_f6

    goto/16 :goto_69

    :cond_f6
    :goto_f6
    const-string p0, "JobStore"

    .line 756
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Read "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " jobs"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_112
    move-exception v1

    .line 750
    :goto_113
    iget-object v2, p0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {v2}, Lcom/android/server/job/JobStore;->-$$Nest$fgetmPersistInfo(Lcom/android/server/job/JobStore;)Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    move-result-object v2

    iget v2, v2, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countAllJobsLoaded:I

    if-gez v2, :cond_135

    .line 751
    iget-object v2, p0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {v2}, Lcom/android/server/job/JobStore;->-$$Nest$fgetmPersistInfo(Lcom/android/server/job/JobStore;)Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    move-result-object v2

    iput v0, v2, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countAllJobsLoaded:I

    .line 752
    iget-object v0, p0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {v0}, Lcom/android/server/job/JobStore;->-$$Nest$fgetmPersistInfo(Lcom/android/server/job/JobStore;)Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    move-result-object v0

    iput v7, v0, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countSystemServerJobsLoaded:I

    .line 753
    iget-object p0, p0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {p0}, Lcom/android/server/job/JobStore;->-$$Nest$fgetmPersistInfo(Lcom/android/server/job/JobStore;)Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    move-result-object p0

    iput v8, p0, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countSystemSyncManagerJobsLoaded:I

    .line 755
    :cond_135
    throw v1
.end method
