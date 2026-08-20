.class public Lcom/android/internal/telephony/metrics/RcsStats;
.super Ljava/lang/Object;
.source "RcsStats.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/metrics/RcsStats$SipTransportSessionArray;,
        Lcom/android/internal/telephony/metrics/RcsStats$SipMessageArray;,
        Lcom/android/internal/telephony/metrics/RcsStats$RcsProvisioningCallback;,
        Lcom/android/internal/telephony/metrics/RcsStats$UceStatsWriterCallback;,
        Lcom/android/internal/telephony/metrics/RcsStats$SipTransportFeatureTags;,
        Lcom/android/internal/telephony/metrics/RcsStats$LastSipDelegateStat;
    }
.end annotation


# static fields
.field private static final blacklist FEATURE_TAGS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist MESSAGE_TYPE:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist MMTEL_SERVICE_ID_SET:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist NONE:I = -0x1

.field private static final blacklist NOTIFY_REASONS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist RANDOM:Ljava/util/Random;

.field private static final blacklist RCS_SERVICE_ID_SET:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist SERVICE_IDS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist STATE_DENIED:I = 0x2

.field public static final blacklist STATE_DEREGISTERED:I = 0x1

.field public static final blacklist STATE_REGISTERED:I = 0x0

.field private static final blacklist TAG:Ljava/lang/String; = "RcsStats"

.field private static blacklist sInstance:Lcom/android/internal/telephony/metrics/RcsStats;

.field private static final blacklist sSubscribeTaskIds:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mAtomsStorage:Lcom/android/internal/telephony/metrics/PersistAtomsStorage;

.field private blacklist mCallback:Lcom/android/internal/telephony/metrics/RcsStats$UceStatsWriterCallback;

.field protected final blacklist mDedicatedBearerListenerEventMap:Ljava/util/Map;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerListenerEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mImsRegistrationFeatureTagStatsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationFeatureTagStats;",
            ">;"
        }
    .end annotation
.end field

.field protected final blacklist mImsRegistrationServiceDescStatsList:Ljava/util/List;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mLastFeatureTagStatMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/internal/telephony/metrics/RcsStats$SipTransportFeatureTags;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mLastSipDelegateStatList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/metrics/RcsStats$LastSipDelegateStat;",
            ">;"
        }
    .end annotation
.end field

.field protected final blacklist mRcsAcsProvisioningStatsList:Ljava/util/List;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;",
            ">;"
        }
    .end annotation
.end field

.field protected final blacklist mRcsProvisioningCallbackMap:Ljava/util/HashMap;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/internal/telephony/metrics/RcsStats$RcsProvisioningCallback;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mSipMessage:Lcom/android/internal/telephony/metrics/RcsStats$SipMessageArray;

.field private blacklist mSipMessageArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/telephony/metrics/RcsStats$SipMessageArray;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mSipTransportSession:Lcom/android/internal/telephony/metrics/RcsStats$SipTransportSessionArray;

.field private blacklist mSipTransportSessionArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/telephony/metrics/RcsStats$SipTransportSessionArray;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$2qWadnVzTWm-kTn1Fa4407-ugww(Ljava/lang/String;Lcom/android/internal/telephony/metrics/RcsStats$SipTransportSessionArray;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/internal/telephony/metrics/RcsStats;->lambda$onSipTransportSessionClosed$3(Ljava/lang/String;Lcom/android/internal/telephony/metrics/RcsStats$SipTransportSessionArray;)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$HfeApF4_C0BkIaOYbqTiPuEQcCQ(Ljava/lang/String;Lcom/android/internal/telephony/metrics/RcsStats$SipTransportSessionArray;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/internal/telephony/metrics/RcsStats;->lambda$onSipTransportSessionClosed$4(Ljava/lang/String;Lcom/android/internal/telephony/metrics/RcsStats$SipTransportSessionArray;)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$XRasiVlLhrpCt0aCUDYRYYUFvJM(Ljava/lang/String;Lcom/android/internal/telephony/metrics/RcsStats$SipTransportSessionArray;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/internal/telephony/metrics/RcsStats;->lambda$confirmedSipTransportSession$2(Ljava/lang/String;Lcom/android/internal/telephony/metrics/RcsStats$SipTransportSessionArray;)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$rtj9GaxjCepGgF0mWssrm7QEpo0(Ljava/lang/String;Lcom/android/internal/telephony/metrics/RcsStats$SipMessageArray;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/internal/telephony/metrics/RcsStats;->lambda$onSipMessageResponse$1(Ljava/lang/String;Lcom/android/internal/telephony/metrics/RcsStats$SipMessageArray;)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$x9M_HFXGa8K8IdidfmzW7K-jVnQ(Ljava/lang/String;Lcom/android/internal/telephony/metrics/RcsStats$SipMessageArray;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/internal/telephony/metrics/RcsStats;->lambda$onSipMessageResponse$0(Ljava/lang/String;Lcom/android/internal/telephony/metrics/RcsStats$SipMessageArray;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAtomsStorage(Lcom/android/internal/telephony/metrics/RcsStats;)Lcom/android/internal/telephony/metrics/PersistAtomsStorage;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/telephony/metrics/RcsStats;->mAtomsStorage:Lcom/android/internal/telephony/metrics/PersistAtomsStorage;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLastFeatureTagStatMap(Lcom/android/internal/telephony/metrics/RcsStats;)Ljava/util/HashMap;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/telephony/metrics/RcsStats;->mLastFeatureTagStatMap:Ljava/util/HashMap;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mremoveRcsProvisioningCallback(Lcom/android/internal/telephony/metrics/RcsStats;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/RcsStats;->removeRcsProvisioningCallback(I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetMMTEL_SERVICE_ID_SET()Ljava/util/HashSet;
    .registers 1

    sget-object v0, Lcom/android/internal/telephony/metrics/RcsStats;->MMTEL_SERVICE_ID_SET:Ljava/util/HashSet;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetRANDOM()Ljava/util/Random;
    .registers 1

    sget-object v0, Lcom/android/internal/telephony/metrics/RcsStats;->RANDOM:Ljava/util/Random;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetRCS_SERVICE_ID_SET()Ljava/util/HashSet;
    .registers 1

    sget-object v0, Lcom/android/internal/telephony/metrics/RcsStats;->RCS_SERVICE_ID_SET:Ljava/util/HashSet;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsSubscribeTaskIds()Ljava/util/Map;
    .registers 1

    sget-object v0, Lcom/android/internal/telephony/metrics/RcsStats;->sSubscribeTaskIds:Ljava/util/Map;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$smcopyOf(Lcom/android/internal/telephony/nano/PersistAtomsProto$SipDelegateStats;)Lcom/android/internal/telephony/nano/PersistAtomsProto$SipDelegateStats;
    .registers 1

    invoke-static {p0}, Lcom/android/internal/telephony/metrics/RcsStats;->copyOf(Lcom/android/internal/telephony/nano/PersistAtomsProto$SipDelegateStats;)Lcom/android/internal/telephony/nano/PersistAtomsProto$SipDelegateStats;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 25

    .line 100
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/metrics/RcsStats;->RANDOM:Ljava/util/Random;

    .line 131
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/metrics/RcsStats;->FEATURE_TAGS:Ljava/util/Map;

    const-string v1, "+g.3gpp.icsi-ref=\"urn%3Aurn-7%3A3gpp-service.ims.icsi.oma.cpm.msg,urn%3Aurn-7%3A3gpp-service.ims.icsi.oma.cpm.largemsg,urn%3Aurn-7%3A3gpp-service.ims.icsi.oma.cpm.deferred\";+g.gsma.rcs.cpm.pager-large"

    .line 134
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    .line 135
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 134
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcse.im\""

    .line 136
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x3

    .line 137
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 136
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "+g.3gpp.icsi-ref=\"urn%3Aurn-7%3A3gpp-service.ims.icsi.oma.cpm.session\""

    .line 138
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x4

    .line 139
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 138
    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.fthttp\""

    .line 140
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x5

    .line 141
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 140
    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.ftsms\""

    .line 142
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x6

    .line 143
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 142
    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "+g.3gpp.icsi-ref=\"urn%3Aurn-7%3A3gpp-service.ims.icsi.gsma.callcomposer\""

    .line 145
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const/4 v7, 0x7

    .line 146
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 144
    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "+g.gsma.callcomposer"

    .line 148
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const/16 v8, 0x8

    .line 149
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 147
    invoke-interface {v0, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "+g.3gpp.icsi-ref=\"urn%3Aurn-7%3A3gpp-service.ims.icsi.gsma.callunanswered\""

    .line 150
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const/16 v9, 0x9

    .line 151
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 150
    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "+g.3gpp.icsi-ref=\"urn%3Aurn-7%3A3gpp-service.ims.icsi.gsma.sharedmap\""

    .line 152
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0xa

    .line 153
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 152
    invoke-interface {v0, v1, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "+g.3gpp.icsi-ref=\"urn%3Aurn-7%3A3gpp-service.ims.icsi.gsma.sharedsketch\""

    .line 154
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0xb

    .line 155
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 154
    invoke-interface {v0, v1, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.geopush\""

    .line 156
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const/16 v12, 0xc

    .line 157
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    .line 156
    invoke-interface {v0, v1, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.geosms\""

    .line 158
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const/16 v13, 0xd

    .line 159
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    .line 158
    invoke-interface {v0, v1, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.chatbot\""

    .line 161
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const/16 v14, 0xe

    .line 162
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    .line 160
    invoke-interface {v0, v1, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.chatbot.sa\""

    .line 164
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const/16 v15, 0xf

    .line 165
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    .line 164
    invoke-interface {v0, v1, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "+g.gsma.rcs.botversion=\"#=1\""

    .line 167
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const/16 v16, 0x10

    move-object/from16 v17, v15

    .line 168
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    .line 166
    invoke-interface {v0, v1, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "+g.gsma.rcs.isbot"

    .line 169
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const/16 v15, 0x11

    .line 170
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    .line 169
    invoke-interface {v0, v1, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "+g.3gpp.icsi-ref=\"urn%3Aurn-7%3A3gpp-service.ims.icsi.mmtel\""

    .line 171
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const/16 v15, 0x12

    .line 172
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    .line 171
    invoke-interface {v0, v1, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "video"

    .line 173
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const/16 v15, 0x13

    .line 174
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    .line 173
    invoke-interface {v0, v1, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcse.dp\""

    .line 175
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const/16 v15, 0x14

    .line 176
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    .line 175
    invoke-interface {v0, v1, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/metrics/RcsStats;->SERVICE_IDS:Ljava/util/Map;

    const-string v1, "org.3gpp.urn:urn-7:3gpp-service.ims.icsi.mmtel"

    .line 188
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v0, v15, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v15, "org.openmobilealliance:IM-session"

    move-object/from16 v16, v1

    .line 190
    invoke-virtual {v15}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "org.openmobilealliance:ChatSession"

    move-object/from16 v18, v15

    .line 192
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v0, v15, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v15, "org.openmobilealliance:File-Transfer-HTTP"

    move-object/from16 v19, v1

    .line 194
    invoke-virtual {v15}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "org.3gpp.urn:urn-7:3gpp-application.ims.iari.rcs.ftsms"

    move-object/from16 v20, v15

    .line 196
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v0, v15, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v15, "org.3gpp.urn:urn-7:3gpp-application.ims.iari.rcs.geopush"

    move-object/from16 v21, v1

    .line 198
    invoke-virtual {v15}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "org.3gpp.urn:urn-7:3gpp-application.ims.iari.rcs.geosms"

    move-object/from16 v22, v15

    .line 200
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v0, v15, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v15, "org.3gpp.urn:urn-7:3gpp-service.ims.icsi.gsma.callcomposer"

    move-object/from16 v23, v1

    .line 202
    invoke-virtual {v15}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "org.3gpp.urn:urn-7:3gpp-service.ims.icsi.gsma.callunanswered"

    .line 204
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "org.3gpp.urn:urn-7:3gpp-service.ims.icsi.gsma.sharedmap"

    .line 206
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "org.3gpp.urn:urn-7:3gpp-service.ims.icsi.gsma.sharedsketch"

    .line 208
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "org.3gpp.urn:urn-7:3gpp-application.ims.iari.rcs.chatbot"

    .line 210
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "org.3gpp.urn:urn-7:3gpp-application.ims.iari.rcs.chatbot.sa"

    .line 212
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "org.gsma.rcs.isbot"

    .line 215
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v24, v15

    move-object/from16 v15, v17

    invoke-interface {v0, v1, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/metrics/RcsStats;->MESSAGE_TYPE:Ljava/util/Map;

    const-string v1, "INVITE"

    .line 226
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ACK"

    .line 228
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "OPTIONS"

    .line 230
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "BYE"

    .line 232
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "CANCEL"

    .line 234
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "REGISTER"

    .line 236
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "PRACK"

    .line 238
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "SUBSCRIBE"

    .line 240
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "NOTIFY"

    .line 242
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "PUBLISH"

    .line 244
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "INFO"

    .line 246
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "REFER"

    .line 248
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "MESSAGE"

    .line 250
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "UPDATE"

    .line 252
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/metrics/RcsStats;->NOTIFY_REASONS:Ljava/util/Map;

    const-string v1, "deactivated"

    .line 266
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "probation"

    .line 267
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "rejected"

    .line 268
    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "timeout"

    .line 269
    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "giveup"

    .line 270
    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "noresource"

    .line 271
    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/metrics/RcsStats;->RCS_SERVICE_ID_SET:Ljava/util/HashSet;

    move-object/from16 v1, v18

    .line 280
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-object/from16 v1, v19

    .line 281
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-object/from16 v1, v20

    .line 282
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-object/from16 v1, v21

    .line 283
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-object/from16 v1, v22

    .line 284
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-object/from16 v1, v23

    .line 285
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "org.3gpp.urn:urn-7:3gpp-service.ims.icsi.gsma.sharedmap"

    .line 286
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "org.3gpp.urn:urn-7:3gpp-service.ims.icsi.gsma.sharedsketch"

    .line 287
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "org.3gpp.urn:urn-7:3gpp-application.ims.iari.rcs.chatbot"

    .line 288
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, " org.3gpp.urn:urn-7:3gpp-application.ims.iari.rcs.chatbot.sa"

    .line 289
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "org.gsma.rcs.isbot"

    .line 290
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 297
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/metrics/RcsStats;->MMTEL_SERVICE_ID_SET:Ljava/util/HashSet;

    move-object/from16 v1, v16

    .line 299
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-object/from16 v1, v24

    .line 300
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "org.3gpp.urn:urn-7:3gpp-service.ims.icsi.gsma.callunanswered"

    .line 301
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 304
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/metrics/RcsStats;->sSubscribeTaskIds:Ljava/util/Map;

    return-void
.end method

.method protected constructor blacklist <init>()V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 786
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getMetricsCollector()Lcom/android/internal/telephony/metrics/MetricsCollector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/metrics/MetricsCollector;->getAtomsStorage()Lcom/android/internal/telephony/metrics/PersistAtomsStorage;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/metrics/RcsStats;->mAtomsStorage:Lcom/android/internal/telephony/metrics/PersistAtomsStorage;

    .line 308
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/metrics/RcsStats;->mDedicatedBearerListenerEventMap:Ljava/util/Map;

    .line 311
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/metrics/RcsStats;->mRcsAcsProvisioningStatsList:Ljava/util/List;

    .line 314
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/metrics/RcsStats;->mRcsProvisioningCallbackMap:Ljava/util/HashMap;

    .line 319
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/metrics/RcsStats;->mImsRegistrationFeatureTagStatsList:Ljava/util/List;

    .line 323
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/metrics/RcsStats;->mImsRegistrationServiceDescStatsList:Ljava/util/List;

    .line 327
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/metrics/RcsStats;->mLastSipDelegateStatList:Ljava/util/List;

    .line 328
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/metrics/RcsStats;->mLastFeatureTagStatMap:Ljava/util/HashMap;

    .line 329
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/metrics/RcsStats;->mSipMessageArray:Ljava/util/ArrayList;

    .line 330
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/metrics/RcsStats;->mSipTransportSessionArray:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 787
    iput-object v0, p0, Lcom/android/internal/telephony/metrics/RcsStats;->mCallback:Lcom/android/internal/telephony/metrics/RcsStats$UceStatsWriterCallback;

    return-void
.end method

.method private blacklist concludeSipDelegateStat()V
    .registers 6

    .line 1516
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/RcsStats;->mLastSipDelegateStatList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 1519
    :cond_9
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/RcsStats;->getWallTimeMillis()J

    move-result-wide v0

    .line 1520
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/internal/telephony/metrics/RcsStats;->mLastSipDelegateStatList:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1521
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_18
    :goto_18
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_33

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/metrics/RcsStats$LastSipDelegateStat;

    .line 1522
    invoke-virtual {v3}, Lcom/android/internal/telephony/metrics/RcsStats$LastSipDelegateStat;->isDestroyed()Z

    move-result v4

    if-eqz v4, :cond_18

    .line 1523
    invoke-virtual {v3, v0, v1}, Lcom/android/internal/telephony/metrics/RcsStats$LastSipDelegateStat;->conclude(J)V

    .line 1524
    iget-object v4, p0, Lcom/android/internal/telephony/metrics/RcsStats;->mLastSipDelegateStatList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_18

    :cond_33
    return-void
.end method

.method private blacklist copyImsRegistrationFeatureTagStats(Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationFeatureTagStats;)Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationFeatureTagStats;
    .registers 4

    .line 1360
    new-instance p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationFeatureTagStats;

    invoke-direct {p0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationFeatureTagStats;-><init>()V

    .line 1361
    iget v0, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationFeatureTagStats;->carrierId:I

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationFeatureTagStats;->carrierId:I

    .line 1362
    iget v0, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationFeatureTagStats;->slotId:I

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationFeatureTagStats;->slotId:I

    .line 1363
    iget v0, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationFeatureTagStats;->featureTagName:I

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationFeatureTagStats;->featureTagName:I

    .line 1364
    iget v0, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationFeatureTagStats;->registrationTech:I

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationFeatureTagStats;->registrationTech:I

    .line 1365
    iget-wide v0, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationFeatureTagStats;->registeredMillis:J

    iput-wide v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationFeatureTagStats;->registeredMillis:J

    return-object p0
.end method

.method private blacklist copyImsRegistrationServiceDescStats(Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;)Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;
    .registers 3

    .line 1385
    new-instance p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;

    invoke-direct {p0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;-><init>()V

    .line 1386
    iget v0, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;->carrierId:I

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;->carrierId:I

    .line 1387
    iget v0, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;->slotId:I

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;->slotId:I

    .line 1388
    iget v0, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;->serviceIdName:I

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;->serviceIdName:I

    .line 1389
    iget v0, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;->serviceIdVersion:F

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;->serviceIdVersion:F

    .line 1390
    iget p1, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;->registrationTech:I

    iput p1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;->registrationTech:I

    return-object p0
.end method

.method private static blacklist copyOf(Lcom/android/internal/telephony/nano/PersistAtomsProto$SipDelegateStats;)Lcom/android/internal/telephony/nano/PersistAtomsProto$SipDelegateStats;
    .registers 4

    .line 392
    new-instance v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipDelegateStats;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipDelegateStats;-><init>()V

    .line 394
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipDelegateStats;->dimension:I

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipDelegateStats;->dimension:I

    .line 395
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipDelegateStats;->slotId:I

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipDelegateStats;->slotId:I

    .line 396
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipDelegateStats;->carrierId:I

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipDelegateStats;->carrierId:I

    .line 397
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipDelegateStats;->destroyReason:I

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipDelegateStats;->destroyReason:I

    .line 398
    iget-wide v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipDelegateStats;->uptimeMillis:J

    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipDelegateStats;->uptimeMillis:J

    return-object v0
.end method

.method private blacklist copyRcsAcsProvisioningStats(Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;)Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;
    .registers 4

    .line 1371
    new-instance p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;

    invoke-direct {p0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;-><init>()V

    .line 1372
    iget v0, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;->carrierId:I

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;->carrierId:I

    .line 1373
    iget v0, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;->slotId:I

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;->slotId:I

    .line 1374
    iget v0, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;->responseCode:I

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;->responseCode:I

    .line 1375
    iget v0, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;->responseType:I

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;->responseType:I

    .line 1376
    iget-boolean v0, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;->isSingleRegistrationEnabled:Z

    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;->isSingleRegistrationEnabled:Z

    .line 1377
    iget v0, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;->count:I

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;->count:I

    .line 1378
    iget-wide v0, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;->stateTimerMillis:J

    iput-wide v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;->stateTimerMillis:J

    return-object p0
.end method

.method private blacklist deleteImsRegistrationServiceDescStats(I)V
    .registers 7

    .line 1405
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/RcsStats;->mImsRegistrationServiceDescStatsList:Ljava/util/List;

    monitor-enter v0

    .line 1406
    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1407
    iget-object v2, p0, Lcom/android/internal/telephony/metrics/RcsStats;->mImsRegistrationServiceDescStatsList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_e
    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_22

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;

    .line 1408
    iget v4, v3, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;->carrierId:I

    if-ne v4, p1, :cond_e

    .line 1409
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e

    .line 1412
    :cond_22
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_26
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_38

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;

    .line 1413
    iget-object v2, p0, Lcom/android/internal/telephony/metrics/RcsStats;->mImsRegistrationServiceDescStatsList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_26

    .line 1415
    :cond_38
    monitor-exit v0

    return-void

    :catchall_3a
    move-exception p0

    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_3 .. :try_end_3c} :catchall_3a

    throw p0
.end method

.method private blacklist flushImsRegistrationFeatureTagStatsInvalid()V
    .registers 8

    .line 1476
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1482
    iget-object v1, p0, Lcom/android/internal/telephony/metrics/RcsStats;->mImsRegistrationFeatureTagStatsList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_b
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationFeatureTagStats;

    .line 1483
    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationFeatureTagStats;->slotId:I

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/metrics/RcsStats;->getSubId(I)I

    move-result v3

    .line 1484
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/metrics/RcsStats;->getCarrierId(I)I

    move-result v3

    .line 1485
    iget v4, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationFeatureTagStats;->carrierId:I

    if-eq v4, v3, :cond_b

    .line 1486
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 1490
    :cond_29
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationFeatureTagStats;

    .line 1491
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/RcsStats;->getWallTimeMillis()J

    move-result-wide v3

    iget-wide v5, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationFeatureTagStats;->registeredMillis:J

    sub-long/2addr v3, v5

    iput-wide v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationFeatureTagStats;->registeredMillis:J

    .line 1492
    iget-object v3, p0, Lcom/android/internal/telephony/metrics/RcsStats;->mAtomsStorage:Lcom/android/internal/telephony/metrics/PersistAtomsStorage;

    invoke-virtual {v3, v2}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->addImsRegistrationFeatureTagStats(Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationFeatureTagStats;)V

    .line 1493
    iget-object v3, p0, Lcom/android/internal/telephony/metrics/RcsStats;->mImsRegistrationFeatureTagStatsList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_2d

    .line 1495
    :cond_4d
    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method private blacklist flushRcsAcsProvisioningStatsInvalid()V
    .registers 8

    .line 1454
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1459
    iget-object v1, p0, Lcom/android/internal/telephony/metrics/RcsStats;->mRcsAcsProvisioningStatsList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_b
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;

    .line 1460
    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;->slotId:I

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/metrics/RcsStats;->getSubId(I)I

    move-result v3

    .line 1461
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/metrics/RcsStats;->getCarrierId(I)I

    move-result v3

    .line 1462
    iget v4, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;->carrierId:I

    if-eq v4, v3, :cond_b

    .line 1463
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 1467
    :cond_29
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;

    .line 1468
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/RcsStats;->getWallTimeMillis()J

    move-result-wide v3

    iget-wide v5, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;->stateTimerMillis:J

    sub-long/2addr v3, v5

    iput-wide v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;->stateTimerMillis:J

    .line 1469
    iget-object v3, p0, Lcom/android/internal/telephony/metrics/RcsStats;->mAtomsStorage:Lcom/android/internal/telephony/metrics/PersistAtomsStorage;

    invoke-virtual {v3, v2}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->addRcsAcsProvisioningStats(Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;)V

    .line 1470
    iget-object v3, p0, Lcom/android/internal/telephony/metrics/RcsStats;->mRcsAcsProvisioningStatsList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_2d

    .line 1472
    :cond_4d
    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public static blacklist getInstance()Lcom/android/internal/telephony/metrics/RcsStats;
    .registers 3

    .line 792
    const-class v0, Lcom/android/internal/telephony/metrics/RcsStats;

    monitor-enter v0

    .line 793
    :try_start_3
    sget-object v1, Lcom/android/internal/telephony/metrics/RcsStats;->sInstance:Lcom/android/internal/telephony/metrics/RcsStats;

    if-nez v1, :cond_15

    .line 794
    sget-object v1, Lcom/android/internal/telephony/metrics/RcsStats;->TAG:Ljava/lang/String;

    const-string v2, "RcsStats created."

    invoke-static {v1, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    new-instance v1, Lcom/android/internal/telephony/metrics/RcsStats;

    invoke-direct {v1}, Lcom/android/internal/telephony/metrics/RcsStats;-><init>()V

    sput-object v1, Lcom/android/internal/telephony/metrics/RcsStats;->sInstance:Lcom/android/internal/telephony/metrics/RcsStats;

    .line 797
    :cond_15
    sget-object v1, Lcom/android/internal/telephony/metrics/RcsStats;->sInstance:Lcom/android/internal/telephony/metrics/RcsStats;

    monitor-exit v0

    return-object v1

    :catchall_19
    move-exception v1

    .line 798
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v1
.end method

.method private blacklist getLastFeatureTags(I)Lcom/android/internal/telephony/metrics/RcsStats$SipTransportFeatureTags;
    .registers 4

    .line 1531
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/RcsStats;->mLastFeatureTagStatMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 1532
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/RcsStats;->mLastFeatureTagStatMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/metrics/RcsStats$SipTransportFeatureTags;

    goto :goto_28

    .line 1534
    :cond_19
    new-instance v0, Lcom/android/internal/telephony/metrics/RcsStats$SipTransportFeatureTags;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/telephony/metrics/RcsStats$SipTransportFeatureTags;-><init>(Lcom/android/internal/telephony/metrics/RcsStats;I)V

    .line 1535
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/RcsStats;->mLastFeatureTagStatMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object p0, v0

    :goto_28
    return-object p0
.end method

.method private blacklist getLastSipDelegateStat(ILjava/util/Set;)Lcom/android/internal/telephony/metrics/RcsStats$LastSipDelegateStat;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/android/internal/telephony/metrics/RcsStats$LastSipDelegateStat;"
        }
    .end annotation

    .line 1500
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/RcsStats;->mLastSipDelegateStatList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/metrics/RcsStats$LastSipDelegateStat;

    .line 1501
    invoke-virtual {v1, p1, p2}, Lcom/android/internal/telephony/metrics/RcsStats$LastSipDelegateStat;->compare(ILjava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_1a

    :cond_19
    const/4 v1, 0x0

    :goto_1a
    if-nez v1, :cond_26

    .line 1508
    new-instance v1, Lcom/android/internal/telephony/metrics/RcsStats$LastSipDelegateStat;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/internal/telephony/metrics/RcsStats$LastSipDelegateStat;-><init>(Lcom/android/internal/telephony/metrics/RcsStats;ILjava/util/Set;)V

    .line 1509
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/RcsStats;->mLastSipDelegateStatList:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_26
    return-object v1
.end method

.method private blacklist getRcsAcsProvisioningStats(I)Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;
    .registers 5

    .line 1439
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/metrics/RcsStats;->getCarrierId(I)I

    move-result v0

    .line 1440
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/metrics/RcsStats;->getSlotId(I)I

    move-result p1

    .line 1442
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/RcsStats;->mRcsAcsProvisioningStatsList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_e
    :goto_e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;

    if-nez v1, :cond_1d

    goto :goto_e

    .line 1446
    :cond_1d
    iget v2, v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;->carrierId:I

    if-ne v2, v0, :cond_e

    iget v2, v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;->slotId:I

    if-ne v2, p1, :cond_e

    return-object v1

    :cond_26
    const/4 p0, 0x0

    return-object p0
.end method

.method private blacklist handleImsRegistrationServiceDescStats()V
    .registers 9

    .line 1419
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/RcsStats;->mImsRegistrationServiceDescStatsList:Ljava/util/List;

    monitor-enter v0

    .line 1420
    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1421
    iget-object v2, p0, Lcom/android/internal/telephony/metrics/RcsStats;->mImsRegistrationServiceDescStatsList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_e
    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_42

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;

    .line 1422
    iget v4, v3, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;->slotId:I

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/metrics/RcsStats;->getSubId(I)I

    move-result v4

    .line 1423
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/metrics/RcsStats;->getCarrierId(I)I

    move-result v4

    .line 1424
    iget v5, v3, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;->carrierId:I

    if-eq v5, v4, :cond_e

    .line 1425
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1426
    iget-wide v4, v3, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;->publishedMillis:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_e

    .line 1427
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/RcsStats;->getWallTimeMillis()J

    move-result-wide v4

    iget-wide v6, v3, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;->publishedMillis:J

    sub-long/2addr v4, v6

    iput-wide v4, v3, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;->publishedMillis:J

    .line 1428
    iget-object v4, p0, Lcom/android/internal/telephony/metrics/RcsStats;->mAtomsStorage:Lcom/android/internal/telephony/metrics/PersistAtomsStorage;

    invoke-virtual {v4, v3}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->addImsRegistrationServiceDescStats(Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;)V

    goto :goto_e

    .line 1432
    :cond_42
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_46
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_58

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;

    .line 1433
    iget-object v3, p0, Lcom/android/internal/telephony/metrics/RcsStats;->mImsRegistrationServiceDescStatsList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_46

    .line 1435
    :cond_58
    monitor-exit v0

    return-void

    :catchall_5a
    move-exception p0

    monitor-exit v0
    :try_end_5c
    .catchall {:try_start_3 .. :try_end_5c} :catchall_5a

    throw p0
.end method

.method private static synthetic blacklist lambda$confirmedSipTransportSession$2(Ljava/lang/String;Lcom/android/internal/telephony/metrics/RcsStats$SipTransportSessionArray;)Z
    .registers 2

    .line 1052
    invoke-static {p1}, Lcom/android/internal/telephony/metrics/RcsStats$SipTransportSessionArray;->-$$Nest$fgetmCallId(Lcom/android/internal/telephony/metrics/RcsStats$SipTransportSessionArray;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static synthetic blacklist lambda$onSipMessageResponse$0(Ljava/lang/String;Lcom/android/internal/telephony/metrics/RcsStats$SipMessageArray;)Z
    .registers 2

    .line 1032
    invoke-static {p1}, Lcom/android/internal/telephony/metrics/RcsStats$SipMessageArray;->-$$Nest$fgetmCallId(Lcom/android/internal/telephony/metrics/RcsStats$SipMessageArray;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static synthetic blacklist lambda$onSipMessageResponse$1(Ljava/lang/String;Lcom/android/internal/telephony/metrics/RcsStats$SipMessageArray;)Z
    .registers 2

    .line 1036
    invoke-static {p1}, Lcom/android/internal/telephony/metrics/RcsStats$SipMessageArray;->-$$Nest$fgetmCallId(Lcom/android/internal/telephony/metrics/RcsStats$SipMessageArray;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static synthetic blacklist lambda$onSipTransportSessionClosed$3(Ljava/lang/String;Lcom/android/internal/telephony/metrics/RcsStats$SipTransportSessionArray;)Z
    .registers 2

    .line 1062
    invoke-static {p1}, Lcom/android/internal/telephony/metrics/RcsStats$SipTransportSessionArray;->-$$Nest$fgetmCallId(Lcom/android/internal/telephony/metrics/RcsStats$SipTransportSessionArray;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static synthetic blacklist lambda$onSipTransportSessionClosed$4(Ljava/lang/String;Lcom/android/internal/telephony/metrics/RcsStats$SipTransportSessionArray;)Z
    .registers 2

    .line 1069
    invoke-static {p1}, Lcom/android/internal/telephony/metrics/RcsStats$SipTransportSessionArray;->-$$Nest$fgetmCallId(Lcom/android/internal/telephony/metrics/RcsStats$SipTransportSessionArray;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private declared-synchronized blacklist removeRcsProvisioningCallback(I)V
    .registers 3

    monitor-enter p0

    .line 1355
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/RcsStats;->mRcsProvisioningCallbackMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 1356
    monitor-exit p0

    return-void

    :catchall_c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private blacklist setImsRegistrationServiceDescStatsTime(I)V
    .registers 7

    .line 1395
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/RcsStats;->mImsRegistrationServiceDescStatsList:Ljava/util/List;

    monitor-enter v0

    .line 1396
    :try_start_3
    iget-object v1, p0, Lcom/android/internal/telephony/metrics/RcsStats;->mImsRegistrationServiceDescStatsList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_9
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;

    .line 1397
    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;->carrierId:I

    if-ne v3, p1, :cond_9

    .line 1398
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/RcsStats;->getWallTimeMillis()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;->publishedMillis:J

    goto :goto_9

    .line 1401
    :cond_20
    monitor-exit v0

    return-void

    :catchall_22
    move-exception p0

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_22

    throw p0
.end method


# virtual methods
.method public blacklist buildLog()Ljava/lang/String;
    .registers 2

    .line 1819
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/RcsStats;->buildProto()Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    move-result-object p0

    .line 1821
    invoke-static {p0}, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->toByteArray(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)[B

    move-result-object p0

    const/4 v0, 0x0

    .line 1820
    invoke-static {p0, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist buildProto()Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;
    .registers 4

    .line 1830
    new-instance v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;-><init>()V

    .line 1832
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/RcsStats;->mAtomsStorage:Lcom/android/internal/telephony/metrics/PersistAtomsStorage;

    iget-object p0, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    .line 1833
    iget-object v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsRegistrationFeatureTagStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationFeatureTagStats;

    array-length v2, v1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationFeatureTagStats;

    iput-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsRegistrationFeatureTagStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationFeatureTagStats;

    .line 1835
    iget-object v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->rcsClientProvisioningStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsClientProvisioningStats;

    array-length v2, v1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsClientProvisioningStats;

    iput-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->rcsClientProvisioningStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsClientProvisioningStats;

    .line 1837
    iget-object v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->rcsAcsProvisioningStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;

    array-length v2, v1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;

    iput-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->rcsAcsProvisioningStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;

    .line 1839
    iget-object v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->sipDelegateStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SipDelegateStats;

    array-length v2, v1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$SipDelegateStats;

    iput-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->sipDelegateStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SipDelegateStats;

    .line 1840
    iget-object v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->sipTransportFeatureTagStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportFeatureTagStats;

    array-length v2, v1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportFeatureTagStats;

    iput-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->sipTransportFeatureTagStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportFeatureTagStats;

    .line 1842
    iget-object v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->sipMessageResponse:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SipMessageResponse;

    array-length v2, v1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$SipMessageResponse;

    iput-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->sipMessageResponse:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SipMessageResponse;

    .line 1844
    iget-object v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->sipTransportSession:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportSession;

    array-length v2, v1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportSession;

    iput-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->sipTransportSession:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportSession;

    .line 1846
    iget-object v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsDedicatedBearerListenerEvent:[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerListenerEvent;

    array-length v2, v1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerListenerEvent;

    iput-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsDedicatedBearerListenerEvent:[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerListenerEvent;

    .line 1848
    iget-object v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsDedicatedBearerEvent:[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;

    array-length v2, v1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;

    iput-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsDedicatedBearerEvent:[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;

    .line 1850
    iget-object v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsRegistrationServiceDescStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;

    array-length v2, v1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;

    iput-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsRegistrationServiceDescStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;

    .line 1852
    iget-object v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->uceEventStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$UceEventStats;

    array-length v2, v1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$UceEventStats;

    iput-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->uceEventStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$UceEventStats;

    .line 1853
    iget-object v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->presenceNotifyEvent:[Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;

    array-length v2, v1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;

    iput-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->presenceNotifyEvent:[Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;

    .line 1855
    iget-object p0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->gbaEvent:[Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;

    array-length v1, p0

    invoke-static {p0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;

    iput-object p0, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->gbaEvent:[Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;

    return-object v0
.end method

.method public declared-synchronized blacklist concludeSipTransportFeatureTagsStat()V
    .registers 5

    monitor-enter p0

    .line 1000
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/RcsStats;->mLastFeatureTagStatMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_35

    if-eqz v0, :cond_b

    .line 1001
    monitor-exit p0

    return-void

    .line 1004
    :cond_b
    :try_start_b
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/RcsStats;->getWallTimeMillis()J

    move-result-wide v0

    .line 1005
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1006
    iget-object v3, p0, Lcom/android/internal/telephony/metrics/RcsStats;->mLastFeatureTagStatMap:Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 1007
    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_21
    :goto_21
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_33

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/metrics/RcsStats$SipTransportFeatureTags;

    if-eqz v3, :cond_21

    .line 1009
    invoke-virtual {v3, v0, v1}, Lcom/android/internal/telephony/metrics/RcsStats$SipTransportFeatureTags;->conclude(J)V
    :try_end_32
    .catchall {:try_start_b .. :try_end_32} :catchall_35

    goto :goto_21

    .line 1012
    :cond_33
    monitor-exit p0

    return-void

    :catchall_35
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized blacklist confirmedSipTransportSession(Ljava/lang/String;I)V
    .registers 5

    monitor-enter p0

    .line 1051
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/RcsStats;->mSipTransportSessionArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/metrics/RcsStats$$ExternalSyntheticLambda4;

    invoke-direct {v1, p1}, Lcom/android/internal/telephony/metrics/RcsStats$$ExternalSyntheticLambda4;-><init>(Ljava/lang/String;)V

    .line 1052
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/telephony/metrics/RcsStats$SipTransportSessionArray;

    if-eqz p1, :cond_20

    .line 1054
    invoke-static {p1, p2}, Lcom/android/internal/telephony/metrics/RcsStats$SipTransportSessionArray;->-$$Nest$fputmSipResponse(Lcom/android/internal/telephony/metrics/RcsStats$SipTransportSessionArray;I)V
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_22

    .line 1056
    :cond_20
    monitor-exit p0

    return-void

    :catchall_22
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public blacklist convertMessageTypeToValue(Ljava/lang/String;)I
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1594
    sget-object p0, Lcom/android/internal/telephony/metrics/RcsStats;->MESSAGE_TYPE:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    .line 1595
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1594
    invoke-interface {p0, p1, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public blacklist convertPresenceNotifyReason(Ljava/lang/String;)I
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1601
    sget-object p0, Lcom/android/internal/telephony/metrics/RcsStats;->NOTIFY_REASONS:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    .line 1602
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1601
    invoke-interface {p0, p1, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public blacklist convertServiceIdToValue(Ljava/lang/String;)I
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1587
    sget-object p0, Lcom/android/internal/telephony/metrics/RcsStats;->SERVICE_IDS:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    .line 1588
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1587
    invoke-interface {p0, p1, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public blacklist convertTagNameToValue(Ljava/lang/String;)I
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1580
    sget-object p0, Lcom/android/internal/telephony/metrics/RcsStats;->FEATURE_TAGS:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    .line 1581
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1580
    invoke-interface {p0, p1, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public declared-synchronized blacklist createSipDelegateStats(ILjava/util/Set;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    if-eqz p2, :cond_14

    .line 954
    :try_start_3
    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_14

    .line 955
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/metrics/RcsStats;->getLastSipDelegateStat(ILjava/util/Set;)Lcom/android/internal/telephony/metrics/RcsStats$LastSipDelegateStat;

    move-result-object p2

    .line 956
    invoke-virtual {p2, p1}, Lcom/android/internal/telephony/metrics/RcsStats$LastSipDelegateStat;->createSipDelegateStat(I)V
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_11

    goto :goto_14

    :catchall_11
    move-exception p1

    monitor-exit p0

    throw p1

    .line 958
    :cond_14
    :goto_14
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized blacklist earlySipTransportSession(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5

    monitor-enter p0

    .line 1043
    :try_start_1
    new-instance v0, Lcom/android/internal/telephony/metrics/RcsStats$SipTransportSessionArray;

    invoke-direct {v0, p0, p1, p3, p2}, Lcom/android/internal/telephony/metrics/RcsStats$SipTransportSessionArray;-><init>(Lcom/android/internal/telephony/metrics/RcsStats;Ljava/lang/String;ILjava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/telephony/metrics/RcsStats;->mSipTransportSession:Lcom/android/internal/telephony/metrics/RcsStats$SipTransportSessionArray;

    .line 1045
    iget-object p1, p0, Lcom/android/internal/telephony/metrics/RcsStats;->mSipTransportSessionArray:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    .line 1046
    monitor-exit p0

    return-void

    :catchall_f
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected blacklist getCarrierId(I)I
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1551
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result p0

    .line 1552
    invoke-static {p0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object p0

    if-eqz p0, :cond_f

    .line 1553
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getCarrierId()I

    move-result p0

    goto :goto_10

    :cond_f
    const/4 p0, -0x1

    :goto_10
    return p0
.end method

.method public declared-synchronized blacklist getRcsProvisioningCallback(IZ)Lcom/android/internal/telephony/metrics/RcsStats$RcsProvisioningCallback;
    .registers 5

    monitor-enter p0

    .line 1331
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/RcsStats;->mRcsProvisioningCallbackMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/metrics/RcsStats$RcsProvisioningCallback;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_21

    if-eqz v0, :cond_11

    .line 1333
    monitor-exit p0

    return-object v0

    .line 1337
    :cond_11
    :try_start_11
    new-instance v0, Lcom/android/internal/telephony/metrics/RcsStats$RcsProvisioningCallback;

    invoke-direct {v0, p0, p0, p1, p2}, Lcom/android/internal/telephony/metrics/RcsStats$RcsProvisioningCallback;-><init>(Lcom/android/internal/telephony/metrics/RcsStats;Lcom/android/internal/telephony/metrics/RcsStats;IZ)V

    .line 1339
    iget-object p2, p0, Lcom/android/internal/telephony/metrics/RcsStats;->mRcsProvisioningCallbackMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1f
    .catchall {:try_start_11 .. :try_end_1f} :catchall_21

    .line 1340
    monitor-exit p0

    return-object v0

    :catchall_21
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected blacklist getSlotId(I)I
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1546
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result p0

    return p0
.end method

.method protected blacklist getSubId(I)I
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1569
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object p0

    if-eqz p0, :cond_e

    .line 1571
    array-length p1, p0

    const/4 v0, 0x1

    if-lt p1, v0, :cond_e

    const/4 p1, 0x0

    .line 1572
    aget p0, p0, p1

    goto :goto_f

    :cond_e
    const/4 p0, -0x1

    :goto_f
    return p0
.end method

.method protected blacklist getWallTimeMillis()J
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1559
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public declared-synchronized blacklist invalidatedMessageResult(ILjava/lang/String;II)V
    .registers 11

    monitor-enter p0

    .line 1024
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/RcsStats;->mSipMessage:Lcom/android/internal/telephony/metrics/RcsStats$SipMessageArray;

    const/4 v3, 0x0

    move v1, p1

    move-object v2, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/metrics/RcsStats$SipMessageArray;->-$$Nest$maddSipMessageStat(Lcom/android/internal/telephony/metrics/RcsStats$SipMessageArray;ILjava/lang/String;III)V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    .line 1026
    monitor-exit p0

    return-void

    :catchall_d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected blacklist isValidCarrierId(I)Z
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const/4 p0, -0x1

    if-le p1, p0, :cond_5

    const/4 p0, 0x1

    goto :goto_6

    :cond_5
    const/4 p0, 0x0

    :goto_6
    return p0
.end method

.method protected blacklist logd(Ljava/lang/String;)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1564
    sget-object p0, Lcom/android/internal/telephony/metrics/RcsStats;->TAG:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public blacklist onFlushIncompleteImsRegistrationFeatureTagStats()V
    .registers 9

    .line 861
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/RcsStats;->mImsRegistrationFeatureTagStatsList:Ljava/util/List;

    monitor-enter v0

    .line 862
    :try_start_3
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/RcsStats;->getWallTimeMillis()J

    move-result-wide v1

    .line 863
    iget-object v3, p0, Lcom/android/internal/telephony/metrics/RcsStats;->mImsRegistrationFeatureTagStatsList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationFeatureTagStats;

    .line 864
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/metrics/RcsStats;->copyImsRegistrationFeatureTagStats(Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationFeatureTagStats;)Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationFeatureTagStats;

    move-result-object v5

    .line 867
    iget-wide v6, v4, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationFeatureTagStats;->registeredMillis:J

    sub-long v6, v1, v6

    iput-wide v6, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationFeatureTagStats;->registeredMillis:J

    .line 868
    iget-object v6, p0, Lcom/android/internal/telephony/metrics/RcsStats;->mAtomsStorage:Lcom/android/internal/telephony/metrics/PersistAtomsStorage;

    invoke-virtual {v6, v5}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->addImsRegistrationFeatureTagStats(Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationFeatureTagStats;)V

    .line 869
    iput-wide v1, v4, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationFeatureTagStats;->registeredMillis:J

    goto :goto_d

    .line 871
    :cond_2b
    monitor-exit v0

    return-void

    :catchall_2d
    move-exception p0

    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_2d

    throw p0
.end method

.method public blacklist onFlushIncompleteImsRegistrationServiceDescStats()V
    .registers 9

    .line 1207
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/RcsStats;->mImsRegistrationServiceDescStatsList:Ljava/util/List;

    monitor-enter v0

    .line 1208
    :try_start_3
    iget-object v1, p0, Lcom/android/internal/telephony/metrics/RcsStats;->mImsRegistrationServiceDescStatsList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;

    .line 1210
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/metrics/RcsStats;->copyImsRegistrationServiceDescStats(Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;)Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;

    move-result-object v3

    .line 1211
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/RcsStats;->getWallTimeMillis()J

    move-result-wide v4

    .line 1214
    iget-wide v6, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;->publishedMillis:J

    sub-long v6, v4, v6

    iput-wide v6, v3, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;->publishedMillis:J

    .line 1215
    iget-object v6, p0, Lcom/android/internal/telephony/metrics/RcsStats;->mAtomsStorage:Lcom/android/internal/telephony/metrics/PersistAtomsStorage;

    invoke-virtual {v6, v3}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->addImsRegistrationServiceDescStats(Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;)V

    .line 1216
    iput-wide v4, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;->publishedMillis:J

    goto :goto_9

    .line 1218
    :cond_2b
    monitor-exit v0

    return-void

    :catchall_2d
    move-exception p0

    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_2d

    throw p0
.end method

.method public blacklist onFlushIncompleteRcsAcsProvisioningStats()V
    .registers 9

    .line 936
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/RcsStats;->mRcsAcsProvisioningStatsList:Ljava/util/List;

    monitor-enter v0

    .line 937
    :try_start_3
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/RcsStats;->getWallTimeMillis()J

    move-result-wide v1

    .line 938
    iget-object v3, p0, Lcom/android/internal/telephony/metrics/RcsStats;->mRcsAcsProvisioningStatsList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;

    .line 941
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/metrics/RcsStats;->copyRcsAcsProvisioningStats(Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;)Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;

    move-result-object v5

    .line 944
    iget-wide v6, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;->stateTimerMillis:J

    sub-long v6, v1, v6

    iput-wide v6, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;->stateTimerMillis:J

    .line 945
    iget-object v6, p0, Lcom/android/internal/telephony/metrics/RcsStats;->mAtomsStorage:Lcom/android/internal/telephony/metrics/PersistAtomsStorage;

    invoke-virtual {v6, v5}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->addRcsAcsProvisioningStats(Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;)V

    .line 947
    iput-wide v1, v4, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;->stateTimerMillis:J

    goto :goto_d

    .line 949
    :cond_2b
    monitor-exit v0

    return-void

    :catchall_2d
    move-exception p0

    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_2d

    throw p0
.end method

.method public declared-synchronized blacklist onGbaFailureEvent(II)V
    .registers 5

    monitor-enter p0

    .line 1313
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/metrics/RcsStats;->getCarrierId(I)I

    move-result v0

    .line 1314
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/metrics/RcsStats;->isValidCarrierId(I)Z

    move-result v1
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_29

    if-nez v1, :cond_d

    .line 1315
    monitor-exit p0

    return-void

    .line 1318
    :cond_d
    :try_start_d
    new-instance v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;

    invoke-direct {v1}, Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;-><init>()V

    .line 1319
    iput v0, v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;->carrierId:I

    .line 1320
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/metrics/RcsStats;->getSlotId(I)I

    move-result p1

    iput p1, v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;->slotId:I

    const/4 p1, 0x0

    .line 1321
    iput-boolean p1, v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;->successful:Z

    .line 1322
    iput p2, v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;->failedReason:I

    const/4 p1, 0x1

    .line 1323
    iput p1, v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;->count:I

    .line 1324
    iget-object p1, p0, Lcom/android/internal/telephony/metrics/RcsStats;->mAtomsStorage:Lcom/android/internal/telephony/metrics/PersistAtomsStorage;

    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->addGbaEvent(Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;)V
    :try_end_27
    .catchall {:try_start_d .. :try_end_27} :catchall_29

    .line 1325
    monitor-exit p0

    return-void

    :catchall_29
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized blacklist onGbaSuccessEvent(I)V
    .registers 4

    monitor-enter p0

    .line 1297
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/metrics/RcsStats;->getCarrierId(I)I

    move-result v0

    .line 1298
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/metrics/RcsStats;->isValidCarrierId(I)Z

    move-result v1
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_29

    if-nez v1, :cond_d

    .line 1299
    monitor-exit p0

    return-void

    .line 1302
    :cond_d
    :try_start_d
    new-instance v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;

    invoke-direct {v1}, Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;-><init>()V

    .line 1303
    iput v0, v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;->carrierId:I

    .line 1304
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/metrics/RcsStats;->getSlotId(I)I

    move-result p1

    iput p1, v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;->slotId:I

    const/4 p1, 0x1

    .line 1305
    iput-boolean p1, v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;->successful:Z

    const/4 v0, -0x1

    .line 1306
    iput v0, v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;->failedReason:I

    .line 1307
    iput p1, v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;->count:I

    .line 1308
    iget-object p1, p0, Lcom/android/internal/telephony/metrics/RcsStats;->mAtomsStorage:Lcom/android/internal/telephony/metrics/PersistAtomsStorage;

    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->addGbaEvent(Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;)V
    :try_end_27
    .catchall {:try_start_d .. :try_end_27} :catchall_29

    .line 1309
    monitor-exit p0

    return-void

    :catchall_29
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized blacklist onImsDedicatedBearerEvent(IIIIZZZ)V
    .registers 10

    monitor-enter p0

    .line 1151
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/metrics/RcsStats;->getSubId(I)I

    move-result p1
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_31

    const/4 v0, -0x1

    if-ne p1, v0, :cond_a

    .line 1153
    monitor-exit p0

    return-void

    .line 1156
    :cond_a
    :try_start_a
    new-instance v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;-><init>()V

    .line 1157
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/metrics/RcsStats;->getCarrierId(I)I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;->carrierId:I

    .line 1158
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/metrics/RcsStats;->getSlotId(I)I

    move-result p1

    iput p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;->slotId:I

    .line 1159
    iput p2, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;->ratAtEnd:I

    .line 1160
    iput p3, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;->qci:I

    .line 1161
    iput p4, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;->bearerState:I

    .line 1162
    iput-boolean p5, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;->localConnectionInfoReceived:Z

    .line 1163
    iput-boolean p6, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;->remoteConnectionInfoReceived:Z

    .line 1164
    iput-boolean p7, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;->hasListeners:Z

    const/4 p1, 0x1

    .line 1165
    iput p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;->count:I

    .line 1166
    iget-object p1, p0, Lcom/android/internal/telephony/metrics/RcsStats;->mAtomsStorage:Lcom/android/internal/telephony/metrics/PersistAtomsStorage;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->addImsDedicatedBearerEvent(Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;)V
    :try_end_2f
    .catchall {:try_start_a .. :try_end_2f} :catchall_31

    .line 1167
    monitor-exit p0

    return-void

    :catchall_31
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized blacklist onImsDedicatedBearerListenerAdded(IIII)V
    .registers 8

    monitor-enter p0

    .line 1076
    :try_start_1
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/metrics/RcsStats;->getSubId(I)I

    move-result v0

    .line 1077
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/metrics/RcsStats;->getCarrierId(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v0, v2, :cond_3f

    .line 1080
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/metrics/RcsStats;->isValidCarrierId(I)Z

    move-result v0

    if-nez v0, :cond_13

    goto :goto_3f

    .line 1084
    :cond_13
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/RcsStats;->mDedicatedBearerListenerEventMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_41

    if-eqz v0, :cond_21

    .line 1085
    monitor-exit p0

    return-void

    .line 1088
    :cond_21
    :try_start_21
    new-instance v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerListenerEvent;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerListenerEvent;-><init>()V

    .line 1089
    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerListenerEvent;->carrierId:I

    .line 1090
    iput p2, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerListenerEvent;->slotId:I

    .line 1091
    iput p3, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerListenerEvent;->ratAtEnd:I

    .line 1092
    iput p4, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerListenerEvent;->qci:I

    const/4 p2, 0x0

    .line 1093
    iput-boolean p2, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerListenerEvent;->dedicatedBearerEstablished:Z

    const/4 p2, 0x1

    .line 1094
    iput p2, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerListenerEvent;->eventCount:I

    .line 1096
    iget-object p2, p0, Lcom/android/internal/telephony/metrics/RcsStats;->mDedicatedBearerListenerEventMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3d
    .catchall {:try_start_21 .. :try_end_3d} :catchall_41

    .line 1097
    monitor-exit p0

    return-void

    .line 1081
    :cond_3f
    :goto_3f
    monitor-exit p0

    return-void

    :catchall_41
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized blacklist onImsDedicatedBearerListenerRemoved(I)V
    .registers 4

    monitor-enter p0

    .line 1137
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/RcsStats;->mDedicatedBearerListenerEventMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 1139
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/RcsStats;->mDedicatedBearerListenerEventMap:Ljava/util/Map;

    .line 1140
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerListenerEvent;

    .line 1142
    iget-object v1, p0, Lcom/android/internal/telephony/metrics/RcsStats;->mAtomsStorage:Lcom/android/internal/telephony/metrics/PersistAtomsStorage;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->addImsDedicatedBearerListenerEvent(Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerListenerEvent;)V

    .line 1143
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/RcsStats;->mDedicatedBearerListenerEventMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_27
    .catchall {:try_start_1 .. :try_end_27} :catchall_29

    .line 1145
    :cond_27
    monitor-exit p0

    return-void

    :catchall_29
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized blacklist onImsDedicatedBearerListenerUpdateSession(IIIIZ)V
    .registers 9

    monitor-enter p0

    .line 1104
    :try_start_1
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/metrics/RcsStats;->getSubId(I)I

    move-result v0

    .line 1105
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/metrics/RcsStats;->getCarrierId(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v0, v2, :cond_58

    .line 1108
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/metrics/RcsStats;->isValidCarrierId(I)Z

    move-result v0

    if-nez v0, :cond_13

    goto :goto_58

    .line 1112
    :cond_13
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/RcsStats;->mDedicatedBearerListenerEventMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 1113
    iget-object p2, p0, Lcom/android/internal/telephony/metrics/RcsStats;->mDedicatedBearerListenerEventMap:Ljava/util/Map;

    .line 1114
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerListenerEvent;

    .line 1116
    iput p3, p2, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerListenerEvent;->ratAtEnd:I

    .line 1117
    iput p4, p2, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerListenerEvent;->qci:I

    .line 1118
    iput-boolean p5, p2, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerListenerEvent;->dedicatedBearerEstablished:Z

    .line 1120
    iget-object p3, p0, Lcom/android/internal/telephony/metrics/RcsStats;->mDedicatedBearerListenerEventMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p3, p1, p2}, Ljava/util/Map;->replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_56

    .line 1122
    :cond_3b
    new-instance v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerListenerEvent;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerListenerEvent;-><init>()V

    .line 1123
    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerListenerEvent;->carrierId:I

    .line 1124
    iput p2, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerListenerEvent;->slotId:I

    .line 1125
    iput p3, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerListenerEvent;->ratAtEnd:I

    .line 1126
    iput p4, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerListenerEvent;->qci:I

    .line 1127
    iput-boolean p5, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerListenerEvent;->dedicatedBearerEstablished:Z

    const/4 p2, 0x1

    .line 1128
    iput p2, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerListenerEvent;->eventCount:I

    .line 1130
    iget-object p2, p0, Lcom/android/internal/telephony/metrics/RcsStats;->mDedicatedBearerListenerEventMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_56
    .catchall {:try_start_1 .. :try_end_56} :catchall_5a

    .line 1132
    :goto_56
    monitor-exit p0

    return-void

    .line 1109
    :cond_58
    :goto_58
    monitor-exit p0

    return-void

    :catchall_5a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public blacklist onImsRegistrationFeatureTagStats(ILjava/util/List;I)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 813
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/RcsStats;->mImsRegistrationFeatureTagStatsList:Ljava/util/List;

    monitor-enter v0

    .line 814
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/metrics/RcsStats;->getCarrierId(I)I

    move-result v1

    .line 815
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/metrics/RcsStats;->isValidCarrierId(I)Z

    move-result v2

    if-nez v2, :cond_12

    .line 816
    invoke-direct {p0}, Lcom/android/internal/telephony/metrics/RcsStats;->flushImsRegistrationFeatureTagStatsInvalid()V

    .line 817
    monitor-exit v0

    return-void

    .line 821
    :cond_12
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/metrics/RcsStats;->onStoreCompleteImsRegistrationFeatureTagStats(I)V

    if-nez p2, :cond_20

    .line 824
    sget-object p0, Lcom/android/internal/telephony/metrics/RcsStats;->TAG:Ljava/lang/String;

    const-string p1, "featureTagNames is null or empty"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 825
    monitor-exit v0

    return-void

    .line 828
    :cond_20
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_24
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_51

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 829
    new-instance v3, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationFeatureTagStats;

    invoke-direct {v3}, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationFeatureTagStats;-><init>()V

    .line 830
    iput v1, v3, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationFeatureTagStats;->carrierId:I

    .line 831
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/metrics/RcsStats;->getSlotId(I)I

    move-result v4

    iput v4, v3, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationFeatureTagStats;->slotId:I

    .line 832
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/metrics/RcsStats;->convertTagNameToValue(Ljava/lang/String;)I

    move-result v2

    iput v2, v3, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationFeatureTagStats;->featureTagName:I

    .line 833
    iput p3, v3, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationFeatureTagStats;->registrationTech:I

    .line 834
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/RcsStats;->getWallTimeMillis()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationFeatureTagStats;->registeredMillis:J

    .line 835
    iget-object v2, p0, Lcom/android/internal/telephony/metrics/RcsStats;->mImsRegistrationFeatureTagStatsList:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_24

    .line 837
    :cond_51
    monitor-exit v0

    return-void

    :catchall_53
    move-exception p0

    monitor-exit v0
    :try_end_55
    .catchall {:try_start_3 .. :try_end_55} :catchall_53

    throw p0
.end method

.method public blacklist onImsRegistrationServiceDescStats(ILjava/util/List;Ljava/util/List;I)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 1175
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/RcsStats;->mImsRegistrationServiceDescStatsList:Ljava/util/List;

    monitor-enter v0

    .line 1176
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/metrics/RcsStats;->getCarrierId(I)I

    move-result v1

    .line 1177
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/metrics/RcsStats;->isValidCarrierId(I)Z

    move-result v2

    if-nez v2, :cond_12

    .line 1178
    invoke-direct {p0}, Lcom/android/internal/telephony/metrics/RcsStats;->handleImsRegistrationServiceDescStats()V

    .line 1179
    monitor-exit v0

    return-void

    .line 1182
    :cond_12
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/metrics/RcsStats;->onStoreCompleteImsRegistrationServiceDescStats(I)V

    if-nez p2, :cond_20

    .line 1185
    sget-object p0, Lcom/android/internal/telephony/metrics/RcsStats;->TAG:Ljava/lang/String;

    const-string p1, "serviceIds is null or empty"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1186
    monitor-exit v0

    return-void

    :cond_20
    const/4 v2, 0x0

    .line 1190
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_25
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5b

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1191
    new-instance v4, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;

    invoke-direct {v4}, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;-><init>()V

    .line 1194
    iput v1, v4, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;->carrierId:I

    .line 1195
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/metrics/RcsStats;->getSlotId(I)I

    move-result v5

    iput v5, v4, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;->slotId:I

    .line 1196
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/metrics/RcsStats;->convertServiceIdToValue(Ljava/lang/String;)I

    move-result v3

    iput v3, v4, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;->serviceIdName:I

    add-int/lit8 v3, v2, 0x1

    .line 1198
    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    iput v2, v4, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;->serviceIdVersion:F

    .line 1199
    iput p4, v4, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;->registrationTech:I

    .line 1200
    iget-object v2, p0, Lcom/android/internal/telephony/metrics/RcsStats;->mImsRegistrationServiceDescStatsList:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v2, v3

    goto :goto_25

    .line 1202
    :cond_5b
    monitor-exit v0

    return-void

    :catchall_5d
    move-exception p0

    monitor-exit v0
    :try_end_5f
    .catchall {:try_start_3 .. :try_end_5f} :catchall_5d

    throw p0
.end method

.method public declared-synchronized blacklist onPresenceNotifyEvent(ILjava/lang/String;ZZZZ)V
    .registers 10

    monitor-enter p0

    .line 1258
    :try_start_1
    new-instance v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;-><init>()V

    .line 1260
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/metrics/RcsStats;->getCarrierId(I)I

    move-result v1

    .line 1261
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/metrics/RcsStats;->isValidCarrierId(I)Z

    move-result v2

    if-nez v2, :cond_15

    .line 1262
    invoke-direct {p0}, Lcom/android/internal/telephony/metrics/RcsStats;->handleImsRegistrationServiceDescStats()V
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_43

    .line 1263
    monitor-exit p0

    return-void

    .line 1266
    :cond_15
    :try_start_15
    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;->carrierId:I

    .line 1267
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/metrics/RcsStats;->getSlotId(I)I

    move-result p1

    iput p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;->slotId:I

    .line 1268
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/metrics/RcsStats;->convertPresenceNotifyReason(Ljava/lang/String;)I

    move-result p1

    iput p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;->reason:I

    .line 1269
    iput-boolean p3, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;->contentBodyReceived:Z

    const/4 p1, 0x0

    const/4 p2, 0x1

    if-eqz p4, :cond_2b

    move p3, p2

    goto :goto_2c

    :cond_2b
    move p3, p1

    .line 1270
    :goto_2c
    iput p3, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;->rcsCapsCount:I

    if-eqz p5, :cond_32

    move p3, p2

    goto :goto_33

    :cond_32
    move p3, p1

    .line 1271
    :goto_33
    iput p3, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;->mmtelCapsCount:I

    if-eqz p6, :cond_38

    move p1, p2

    .line 1272
    :cond_38
    iput p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;->noCapsCount:I

    .line 1273
    iput p2, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;->count:I

    .line 1274
    iget-object p1, p0, Lcom/android/internal/telephony/metrics/RcsStats;->mAtomsStorage:Lcom/android/internal/telephony/metrics/PersistAtomsStorage;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->addPresenceNotifyEvent(Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;)V
    :try_end_41
    .catchall {:try_start_15 .. :try_end_41} :catchall_43

    .line 1275
    monitor-exit p0

    return-void

    :catchall_43
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public blacklist onRcsAcsProvisioningStats(IIIZ)V
    .registers 8

    .line 894
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/RcsStats;->mRcsAcsProvisioningStatsList:Ljava/util/List;

    monitor-enter v0

    .line 895
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/metrics/RcsStats;->getCarrierId(I)I

    move-result v1

    .line 896
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/metrics/RcsStats;->isValidCarrierId(I)Z

    move-result v2

    if-nez v2, :cond_12

    .line 897
    invoke-direct {p0}, Lcom/android/internal/telephony/metrics/RcsStats;->flushRcsAcsProvisioningStatsInvalid()V

    .line 898
    monitor-exit v0

    return-void

    .line 902
    :cond_12
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/metrics/RcsStats;->onStoreCompleteRcsAcsProvisioningStats(I)V

    .line 905
    new-instance v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;

    invoke-direct {v2}, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;-><init>()V

    .line 906
    iput v1, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;->carrierId:I

    .line 907
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/metrics/RcsStats;->getSlotId(I)I

    move-result p1

    iput p1, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;->slotId:I

    .line 908
    iput p2, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;->responseCode:I

    .line 909
    iput p3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;->responseType:I

    .line 910
    iput-boolean p4, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;->isSingleRegistrationEnabled:Z

    const/4 p1, 0x1

    .line 911
    iput p1, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;->count:I

    .line 912
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/RcsStats;->getWallTimeMillis()J

    move-result-wide p1

    iput-wide p1, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;->stateTimerMillis:J

    .line 915
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/RcsStats;->mRcsAcsProvisioningStatsList:Ljava/util/List;

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 916
    monitor-exit v0

    return-void

    :catchall_38
    move-exception p0

    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_3 .. :try_end_3a} :catchall_38

    throw p0
.end method

.method public declared-synchronized blacklist onRcsClientProvisioningStats(II)V
    .registers 5

    monitor-enter p0

    .line 876
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/metrics/RcsStats;->getCarrierId(I)I

    move-result v0

    .line 878
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/metrics/RcsStats;->isValidCarrierId(I)Z

    move-result v1
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_26

    if-nez v1, :cond_d

    .line 879
    monitor-exit p0

    return-void

    .line 882
    :cond_d
    :try_start_d
    new-instance v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsClientProvisioningStats;

    invoke-direct {v1}, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsClientProvisioningStats;-><init>()V

    .line 883
    iput v0, v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsClientProvisioningStats;->carrierId:I

    .line 884
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/metrics/RcsStats;->getSlotId(I)I

    move-result p1

    iput p1, v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsClientProvisioningStats;->slotId:I

    .line 885
    iput p2, v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsClientProvisioningStats;->event:I

    const/4 p1, 0x1

    .line 886
    iput p1, v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsClientProvisioningStats;->count:I

    .line 887
    iget-object p1, p0, Lcom/android/internal/telephony/metrics/RcsStats;->mAtomsStorage:Lcom/android/internal/telephony/metrics/PersistAtomsStorage;

    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->addRcsClientProvisioningStats(Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsClientProvisioningStats;)V
    :try_end_24
    .catchall {:try_start_d .. :try_end_24} :catchall_26

    .line 888
    monitor-exit p0

    return-void

    :catchall_26
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized blacklist onSipDelegateStats(ILjava/util/Set;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    monitor-enter p0

    if-eqz p2, :cond_17

    .line 963
    :try_start_3
    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_17

    .line 964
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/metrics/RcsStats;->getLastSipDelegateStat(ILjava/util/Set;)Lcom/android/internal/telephony/metrics/RcsStats$LastSipDelegateStat;

    move-result-object p1

    .line 965
    invoke-virtual {p1, p3}, Lcom/android/internal/telephony/metrics/RcsStats$LastSipDelegateStat;->setSipDelegateDestroyReason(I)V

    .line 966
    invoke-direct {p0}, Lcom/android/internal/telephony/metrics/RcsStats;->concludeSipDelegateStat()V
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_14

    goto :goto_17

    :catchall_14
    move-exception p1

    monitor-exit p0

    throw p1

    .line 968
    :cond_17
    :goto_17
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized blacklist onSipMessageRequest(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5

    monitor-enter p0

    .line 1017
    :try_start_1
    new-instance v0, Lcom/android/internal/telephony/metrics/RcsStats$SipMessageArray;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/android/internal/telephony/metrics/RcsStats$SipMessageArray;-><init>(Lcom/android/internal/telephony/metrics/RcsStats;Ljava/lang/String;ILjava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/telephony/metrics/RcsStats;->mSipMessage:Lcom/android/internal/telephony/metrics/RcsStats$SipMessageArray;

    .line 1018
    iget-object p1, p0, Lcom/android/internal/telephony/metrics/RcsStats;->mSipMessageArray:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    .line 1019
    monitor-exit p0

    return-void

    :catchall_f
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized blacklist onSipMessageResponse(ILjava/lang/String;II)V
    .registers 12

    monitor-enter p0

    .line 1031
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/RcsStats;->mSipMessageArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/metrics/RcsStats$$ExternalSyntheticLambda0;

    invoke-direct {v1, p2}, Lcom/android/internal/telephony/metrics/RcsStats$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    .line 1032
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/metrics/RcsStats$SipMessageArray;

    if-eqz v0, :cond_37

    .line 1034
    iget-object v1, p0, Lcom/android/internal/telephony/metrics/RcsStats;->mSipMessage:Lcom/android/internal/telephony/metrics/RcsStats$SipMessageArray;

    invoke-static {v0}, Lcom/android/internal/telephony/metrics/RcsStats$SipMessageArray;->-$$Nest$fgetmMethod(Lcom/android/internal/telephony/metrics/RcsStats$SipMessageArray;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0}, Lcom/android/internal/telephony/metrics/RcsStats$SipMessageArray;->-$$Nest$fgetmDirection(Lcom/android/internal/telephony/metrics/RcsStats$SipMessageArray;)I

    move-result v5

    move v2, p1

    move v4, p3

    move v6, p4

    invoke-static/range {v1 .. v6}, Lcom/android/internal/telephony/metrics/RcsStats$SipMessageArray;->-$$Nest$maddSipMessageStat(Lcom/android/internal/telephony/metrics/RcsStats$SipMessageArray;ILjava/lang/String;III)V

    .line 1036
    iget-object p1, p0, Lcom/android/internal/telephony/metrics/RcsStats;->mSipMessageArray:Ljava/util/ArrayList;

    new-instance p3, Lcom/android/internal/telephony/metrics/RcsStats$$ExternalSyntheticLambda1;

    invoke-direct {p3, p2}, Lcom/android/internal/telephony/metrics/RcsStats$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z
    :try_end_37
    .catchall {:try_start_1 .. :try_end_37} :catchall_39

    .line 1038
    :cond_37
    monitor-exit p0

    return-void

    :catchall_39
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized blacklist onSipTransportFeatureTagStats(ILjava/util/Set;Ljava/util/Set;Ljava/util/Set;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set<",
            "Landroid/telephony/ims/FeatureTagState;",
            ">;",
            "Ljava/util/Set<",
            "Landroid/telephony/ims/FeatureTagState;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 976
    :try_start_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/RcsStats;->getWallTimeMillis()J

    move-result-wide v6

    .line 977
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/RcsStats;->getLastFeatureTags(I)Lcom/android/internal/telephony/metrics/RcsStats$SipTransportFeatureTags;

    move-result-object p1

    if-eqz p4, :cond_2a

    .line 978
    invoke-interface {p4}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2a

    .line 979
    invoke-interface {p4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_15
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, -0x1

    move-object v0, p1

    move-wide v4, v6

    .line 980
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/metrics/RcsStats$SipTransportFeatureTags;->updateLastFeatureTagState(Ljava/lang/String;IIJ)V

    goto :goto_15

    :cond_2a
    if-eqz p2, :cond_51

    .line 984
    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result p4

    if-nez p4, :cond_51

    .line 985
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_36
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_51

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/telephony/ims/FeatureTagState;

    .line 986
    invoke-virtual {p4}, Landroid/telephony/ims/FeatureTagState;->getFeatureTag()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    .line 987
    invoke-virtual {p4}, Landroid/telephony/ims/FeatureTagState;->getState()I

    move-result v3

    move-object v0, p1

    move-wide v4, v6

    .line 986
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/metrics/RcsStats$SipTransportFeatureTags;->updateLastFeatureTagState(Ljava/lang/String;IIJ)V

    goto :goto_36

    :cond_51
    if-eqz p3, :cond_78

    .line 990
    invoke-interface {p3}, Ljava/util/Set;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_78

    .line 991
    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_5d
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_78

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/telephony/ims/FeatureTagState;

    .line 993
    invoke-virtual {p3}, Landroid/telephony/ims/FeatureTagState;->getFeatureTag()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p3}, Landroid/telephony/ims/FeatureTagState;->getState()I

    move-result v3

    move-object v0, p1

    move-wide v4, v6

    .line 992
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/metrics/RcsStats$SipTransportFeatureTags;->updateLastFeatureTagState(Ljava/lang/String;IIJ)V
    :try_end_77
    .catchall {:try_start_1 .. :try_end_77} :catchall_7a

    goto :goto_5d

    .line 996
    :cond_78
    monitor-exit p0

    return-void

    :catchall_7a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized blacklist onSipTransportSessionClosed(ILjava/lang/String;IZ)V
    .registers 11

    monitor-enter p0

    .line 1061
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/RcsStats;->mSipTransportSessionArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/metrics/RcsStats$$ExternalSyntheticLambda2;

    invoke-direct {v1, p2}, Lcom/android/internal/telephony/metrics/RcsStats$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;)V

    .line 1062
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/metrics/RcsStats$SipTransportSessionArray;

    if-eqz v0, :cond_3d

    if-eqz p3, :cond_22

    .line 1065
    invoke-static {v0, p3}, Lcom/android/internal/telephony/metrics/RcsStats$SipTransportSessionArray;->-$$Nest$fputmSipResponse(Lcom/android/internal/telephony/metrics/RcsStats$SipTransportSessionArray;I)V

    .line 1067
    :cond_22
    iget-object v1, p0, Lcom/android/internal/telephony/metrics/RcsStats;->mSipTransportSession:Lcom/android/internal/telephony/metrics/RcsStats$SipTransportSessionArray;

    invoke-static {v0}, Lcom/android/internal/telephony/metrics/RcsStats$SipTransportSessionArray;->-$$Nest$fgetmMethod(Lcom/android/internal/telephony/metrics/RcsStats$SipTransportSessionArray;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Lcom/android/internal/telephony/metrics/RcsStats$SipTransportSessionArray;->-$$Nest$fgetmDirection(Lcom/android/internal/telephony/metrics/RcsStats$SipTransportSessionArray;)I

    move-result v3

    move-object v0, v1

    move v1, p1

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/metrics/RcsStats$SipTransportSessionArray;->-$$Nest$maddSipTransportSessionStat(Lcom/android/internal/telephony/metrics/RcsStats$SipTransportSessionArray;ILjava/lang/String;IIZ)V

    .line 1069
    iget-object p1, p0, Lcom/android/internal/telephony/metrics/RcsStats;->mSipTransportSessionArray:Ljava/util/ArrayList;

    new-instance p3, Lcom/android/internal/telephony/metrics/RcsStats$$ExternalSyntheticLambda3;

    invoke-direct {p3, p2}, Lcom/android/internal/telephony/metrics/RcsStats$$ExternalSyntheticLambda3;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z
    :try_end_3d
    .catchall {:try_start_1 .. :try_end_3d} :catchall_3f

    .line 1071
    :cond_3d
    monitor-exit p0

    return-void

    :catchall_3f
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public blacklist onStoreCompleteImsRegistrationFeatureTagStats(I)V
    .registers 10

    .line 842
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/RcsStats;->mImsRegistrationFeatureTagStatsList:Ljava/util/List;

    monitor-enter v0

    .line 843
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/metrics/RcsStats;->getCarrierId(I)I

    move-result p1

    .line 844
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 845
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/RcsStats;->getWallTimeMillis()J

    move-result-wide v2

    .line 846
    iget-object v4, p0, Lcom/android/internal/telephony/metrics/RcsStats;->mImsRegistrationFeatureTagStatsList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_16
    :goto_16
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_35

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationFeatureTagStats;

    .line 847
    iget v6, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationFeatureTagStats;->carrierId:I

    if-ne v6, p1, :cond_16

    .line 848
    iget-wide v6, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationFeatureTagStats;->registeredMillis:J

    sub-long v6, v2, v6

    iput-wide v6, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationFeatureTagStats;->registeredMillis:J

    .line 849
    iget-object v6, p0, Lcom/android/internal/telephony/metrics/RcsStats;->mAtomsStorage:Lcom/android/internal/telephony/metrics/PersistAtomsStorage;

    invoke-virtual {v6, v5}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->addImsRegistrationFeatureTagStats(Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationFeatureTagStats;)V

    .line 850
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_16

    .line 853
    :cond_35
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_39
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationFeatureTagStats;

    .line 854
    iget-object v2, p0, Lcom/android/internal/telephony/metrics/RcsStats;->mImsRegistrationFeatureTagStatsList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_39

    .line 856
    :cond_4b
    monitor-exit v0

    return-void

    :catchall_4d
    move-exception p0

    monitor-exit v0
    :try_end_4f
    .catchall {:try_start_3 .. :try_end_4f} :catchall_4d

    throw p0
.end method

.method public blacklist onStoreCompleteImsRegistrationServiceDescStats(I)V
    .registers 10

    .line 1279
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/RcsStats;->mImsRegistrationServiceDescStatsList:Ljava/util/List;

    monitor-enter v0

    .line 1280
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/metrics/RcsStats;->getCarrierId(I)I

    move-result p1

    .line 1281
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1282
    iget-object v2, p0, Lcom/android/internal/telephony/metrics/RcsStats;->mImsRegistrationServiceDescStatsList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_12
    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_34

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;

    .line 1283
    iget v4, v3, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;->carrierId:I

    if-ne v4, p1, :cond_12

    .line 1284
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/RcsStats;->getWallTimeMillis()J

    move-result-wide v4

    iget-wide v6, v3, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;->publishedMillis:J

    sub-long/2addr v4, v6

    iput-wide v4, v3, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;->publishedMillis:J

    .line 1285
    iget-object v4, p0, Lcom/android/internal/telephony/metrics/RcsStats;->mAtomsStorage:Lcom/android/internal/telephony/metrics/PersistAtomsStorage;

    invoke-virtual {v4, v3}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->addImsRegistrationServiceDescStats(Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;)V

    .line 1286
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_12

    .line 1289
    :cond_34
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_38
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;

    .line 1290
    iget-object v2, p0, Lcom/android/internal/telephony/metrics/RcsStats;->mImsRegistrationServiceDescStatsList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_38

    .line 1292
    :cond_4a
    monitor-exit v0

    return-void

    :catchall_4c
    move-exception p0

    monitor-exit v0
    :try_end_4e
    .catchall {:try_start_3 .. :try_end_4e} :catchall_4c

    throw p0
.end method

.method public blacklist onStoreCompleteRcsAcsProvisioningStats(I)V
    .registers 7

    .line 921
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/RcsStats;->mRcsAcsProvisioningStatsList:Ljava/util/List;

    monitor-enter v0

    .line 923
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/RcsStats;->getRcsAcsProvisioningStats(I)Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;

    move-result-object p1

    if-eqz p1, :cond_1c

    .line 926
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/RcsStats;->getWallTimeMillis()J

    move-result-wide v1

    iget-wide v3, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;->stateTimerMillis:J

    sub-long/2addr v1, v3

    iput-wide v1, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;->stateTimerMillis:J

    .line 927
    iget-object v1, p0, Lcom/android/internal/telephony/metrics/RcsStats;->mAtomsStorage:Lcom/android/internal/telephony/metrics/PersistAtomsStorage;

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->addRcsAcsProvisioningStats(Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;)V

    .line 929
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/RcsStats;->mRcsAcsProvisioningStatsList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 931
    :cond_1c
    monitor-exit v0

    return-void

    :catchall_1e
    move-exception p0

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw p0
.end method

.method public declared-synchronized blacklist onUceEventStats(IIZII)V
    .registers 9

    monitor-enter p0

    .line 1224
    :try_start_1
    new-instance v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$UceEventStats;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$UceEventStats;-><init>()V

    .line 1226
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/metrics/RcsStats;->getCarrierId(I)I

    move-result v1

    .line 1227
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/metrics/RcsStats;->isValidCarrierId(I)Z

    move-result v2

    if-nez v2, :cond_15

    .line 1228
    invoke-direct {p0}, Lcom/android/internal/telephony/metrics/RcsStats;->handleImsRegistrationServiceDescStats()V
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_3e

    .line 1229
    monitor-exit p0

    return-void

    .line 1231
    :cond_15
    :try_start_15
    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$UceEventStats;->carrierId:I

    .line 1232
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/metrics/RcsStats;->getSlotId(I)I

    move-result p1

    iput p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$UceEventStats;->slotId:I

    .line 1233
    iput p2, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$UceEventStats;->type:I

    .line 1234
    iput-boolean p3, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$UceEventStats;->successful:Z

    .line 1235
    iput p4, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$UceEventStats;->commandCode:I

    .line 1236
    iput p5, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$UceEventStats;->networkResponse:I

    const/4 p1, 0x1

    .line 1237
    iput p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$UceEventStats;->count:I

    .line 1238
    iget-object p4, p0, Lcom/android/internal/telephony/metrics/RcsStats;->mAtomsStorage:Lcom/android/internal/telephony/metrics/PersistAtomsStorage;

    invoke-virtual {p4, v0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->addUceEventStats(Lcom/android/internal/telephony/nano/PersistAtomsProto$UceEventStats;)V

    if-ne p2, p1, :cond_3c

    if-eqz p3, :cond_37

    .line 1248
    iget p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$UceEventStats;->carrierId:I

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/RcsStats;->setImsRegistrationServiceDescStatsTime(I)V

    goto :goto_3c

    .line 1250
    :cond_37
    iget p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$UceEventStats;->carrierId:I

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/RcsStats;->deleteImsRegistrationServiceDescStats(I)V
    :try_end_3c
    .catchall {:try_start_15 .. :try_end_3c} :catchall_3e

    .line 1253
    :cond_3c
    :goto_3c
    monitor-exit p0

    return-void

    :catchall_3e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized blacklist printAllMetrics(Ljava/io/PrintWriter;)V
    .registers 11

    monitor-enter p0

    .line 1611
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/RcsStats;->mAtomsStorage:Lcom/android/internal/telephony/metrics/PersistAtomsStorage;

    if-eqz v0, :cond_510

    iget-object v0, v0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    if-nez v0, :cond_b

    goto/16 :goto_510

    .line 1615
    :cond_b
    new-instance v0, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p1, v1}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 1616
    iget-object p1, p0, Lcom/android/internal/telephony/metrics/RcsStats;->mAtomsStorage:Lcom/android/internal/telephony/metrics/PersistAtomsStorage;

    iget-object p1, p1, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    const-string v1, "RcsStats Metrics Proto: "

    .line 1618
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "------------------------------------------"

    .line 1619
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "ImsRegistrationFeatureTagStats:"

    .line 1620
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1621
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 1622
    iget-object v1, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsRegistrationFeatureTagStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationFeatureTagStats;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_2d
    if-ge v4, v2, :cond_72

    aget-object v5, v1, v4

    .line 1623
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationFeatureTagStats;->carrierId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "] ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationFeatureTagStats;->slotId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "] Feature Tag Name = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationFeatureTagStats;->featureTagName:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", Registration Tech = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationFeatureTagStats;->registrationTech:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", Registered Duration (ms) = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationFeatureTagStats;->registeredMillis:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2d

    .line 1629
    :cond_72
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    const-string v1, "RcsClientProvisioningStats:"

    .line 1631
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1632
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 1633
    iget-object v1, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->rcsClientProvisioningStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsClientProvisioningStats;

    array-length v2, v1

    move v4, v3

    :goto_81
    if-ge v4, v2, :cond_bc

    aget-object v5, v1, v4

    .line 1634
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsClientProvisioningStats;->carrierId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "] ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsClientProvisioningStats;->slotId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "] Event = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsClientProvisioningStats;->event:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", Count = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsClientProvisioningStats;->count:I

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_81

    .line 1639
    :cond_bc
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    const-string v1, "RcsAcsProvisioningStats:"

    .line 1641
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1642
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 1643
    iget-object v1, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->rcsAcsProvisioningStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;

    array-length v2, v1

    move v4, v3

    :goto_cb
    if-ge v4, v2, :cond_124

    aget-object v5, v1, v4

    .line 1644
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;->carrierId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "] ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;->slotId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "] Response Code = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;->responseCode:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", Response Type = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;->responseType:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", Single Registration Enabled = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;->isSingleRegistrationEnabled:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", Count = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;->count:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", State Timer (ms) = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;->stateTimerMillis:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_cb

    .line 1652
    :cond_124
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    const-string v1, "SipDelegateStats:"

    .line 1654
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1655
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 1656
    iget-object v1, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->sipDelegateStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SipDelegateStats;

    array-length v2, v1

    move v4, v3

    :goto_133
    if-ge v4, v2, :cond_178

    aget-object v5, v1, v4

    .line 1657
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipDelegateStats;->carrierId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "] ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipDelegateStats;->slotId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "] ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipDelegateStats;->dimension:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "] Destroy Reason = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipDelegateStats;->destroyReason:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", Uptime (ms) = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipDelegateStats;->uptimeMillis:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_133

    .line 1663
    :cond_178
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    const-string v1, "SipTransportFeatureTagStats:"

    .line 1665
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1666
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 1667
    iget-object v1, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->sipTransportFeatureTagStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportFeatureTagStats;

    array-length v2, v1

    move v4, v3

    :goto_187
    if-ge v4, v2, :cond_1d6

    aget-object v5, v1, v4

    .line 1668
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportFeatureTagStats;->carrierId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "] ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportFeatureTagStats;->slotId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "] Feature Tag Name = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportFeatureTagStats;->featureTagName:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", Denied Reason = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportFeatureTagStats;->sipTransportDeniedReason:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", Deregistered Reason = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportFeatureTagStats;->sipTransportDeregisteredReason:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", Associated Time (ms) = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportFeatureTagStats;->associatedMillis:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_187

    .line 1675
    :cond_1d6
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    const-string v1, "SipMessageResponse:"

    .line 1677
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1678
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 1679
    iget-object v1, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->sipMessageResponse:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SipMessageResponse;

    array-length v2, v1

    move v4, v3

    :goto_1e5
    if-ge v4, v2, :cond_23e

    aget-object v5, v1, v4

    .line 1680
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipMessageResponse;->carrierId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "] ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipMessageResponse;->slotId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "] Message Method = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipMessageResponse;->sipMessageMethod:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", Response = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipMessageResponse;->sipMessageResponse:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", Direction = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipMessageResponse;->sipMessageDirection:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", Error = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipMessageResponse;->messageError:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", Count = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipMessageResponse;->count:I

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1e5

    .line 1688
    :cond_23e
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    const-string v1, "SipTransportSession:"

    .line 1690
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1691
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 1692
    iget-object v1, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->sipTransportSession:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportSession;

    array-length v2, v1

    move v4, v3

    :goto_24d
    if-ge v4, v2, :cond_2a6

    aget-object v5, v1, v4

    .line 1693
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportSession;->carrierId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "] ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportSession;->slotId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "] Session Method = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportSession;->sessionMethod:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", Direction = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportSession;->sipMessageDirection:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", Response = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportSession;->sipResponse:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", Count = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportSession;->sessionCount:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", GraceFully Count = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportSession;->endedGracefullyCount:I

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_24d

    .line 1701
    :cond_2a6
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    const-string v1, "ImsDedicatedBearerListenerEvent:"

    .line 1703
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1704
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 1705
    iget-object v1, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsDedicatedBearerListenerEvent:[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerListenerEvent;

    array-length v2, v1

    move v4, v3

    :goto_2b5
    if-ge v4, v2, :cond_304

    aget-object v5, v1, v4

    .line 1706
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerListenerEvent;->carrierId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "] ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerListenerEvent;->slotId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "] RAT = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerListenerEvent;->ratAtEnd:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", QCI = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerListenerEvent;->qci:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", Dedicated Bearer Established = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerListenerEvent;->dedicatedBearerEstablished:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", Count = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerListenerEvent;->eventCount:I

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2b5

    .line 1713
    :cond_304
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    const-string v1, "ImsDedicatedBearerEvent:"

    .line 1715
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1716
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 1717
    iget-object v1, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsDedicatedBearerEvent:[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;

    array-length v2, v1

    move v4, v3

    :goto_313
    if-ge v4, v2, :cond_380

    aget-object v5, v1, v4

    .line 1718
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;->carrierId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "] ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;->slotId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "] RAT = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;->ratAtEnd:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", QCI = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;->qci:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", Bearer State = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;->bearerState:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", Local Connection Info = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;->localConnectionInfoReceived:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", Remote Connection Info = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;->remoteConnectionInfoReceived:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", Listener Existence = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;->hasListeners:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", Count = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;->count:I

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_313

    .line 1728
    :cond_380
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    const-string v1, "ImsRegistrationServiceDescStats:"

    .line 1730
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1731
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 1732
    iget-object v1, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsRegistrationServiceDescStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;

    array-length v2, v1

    move v4, v3

    :goto_38f
    if-ge v4, v2, :cond_3de

    aget-object v5, v1, v4

    .line 1733
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;->carrierId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "] ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;->slotId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "] Name = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;->serviceIdName:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", Version = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;->serviceIdVersion:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v7, ", Registration Tech = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;->registrationTech:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", Published Time (ms) = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;->publishedMillis:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_38f

    .line 1740
    :cond_3de
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    const-string v1, "UceEventStats:"

    .line 1742
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1743
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 1744
    iget-object v1, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->uceEventStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$UceEventStats;

    array-length v2, v1

    move v4, v3

    :goto_3ed
    if-ge v4, v2, :cond_446

    aget-object v5, v1, v4

    .line 1745
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$UceEventStats;->carrierId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "] ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$UceEventStats;->slotId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "] Type = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$UceEventStats;->type:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", Successful = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$UceEventStats;->successful:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", Code = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$UceEventStats;->commandCode:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", Response = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$UceEventStats;->networkResponse:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", Count = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$UceEventStats;->count:I

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_3ed

    .line 1753
    :cond_446
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    const-string v1, "PresenceNotifyEvent:"

    .line 1755
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1756
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 1757
    iget-object v1, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->presenceNotifyEvent:[Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;

    array-length v2, v1

    move v4, v3

    :goto_455
    if-ge v4, v2, :cond_4b8

    aget-object v5, v1, v4

    .line 1758
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;->carrierId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "] ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;->slotId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "] Reason = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;->reason:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", Body = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;->contentBodyReceived:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", RCS Count = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;->rcsCapsCount:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", MMTEL Count = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;->mmtelCapsCount:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", NoCaps Count = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;->noCapsCount:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", Count = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;->count:I

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_455

    .line 1767
    :cond_4b8
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    const-string v1, "GbaEvent:"

    .line 1769
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1770
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 1771
    iget-object p1, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->gbaEvent:[Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;

    array-length v1, p1

    :goto_4c6
    if-ge v3, v1, :cond_50b

    aget-object v2, p1, v3

    .line 1772
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;->carrierId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "] ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;->slotId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "] Successful = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;->successful:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", Fail Reason = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;->failedReason:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", Count = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;->count:I

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_4c6

    .line 1778
    :cond_50b
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;
    :try_end_50e
    .catchall {:try_start_1 .. :try_end_50e} :catchall_512

    .line 1779
    monitor-exit p0

    return-void

    .line 1612
    :cond_510
    :goto_510
    monitor-exit p0

    return-void

    :catchall_512
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public blacklist registerUceCallback()V
    .registers 3

    .line 803
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/RcsStats;->mCallback:Lcom/android/internal/telephony/metrics/RcsStats$UceStatsWriterCallback;

    if-nez v0, :cond_19

    .line 804
    new-instance v0, Lcom/android/internal/telephony/metrics/RcsStats$UceStatsWriterCallback;

    sget-object v1, Lcom/android/internal/telephony/metrics/RcsStats;->sInstance:Lcom/android/internal/telephony/metrics/RcsStats;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/metrics/RcsStats$UceStatsWriterCallback;-><init>(Lcom/android/internal/telephony/metrics/RcsStats;Lcom/android/internal/telephony/metrics/RcsStats;)V

    iput-object v0, p0, Lcom/android/internal/telephony/metrics/RcsStats;->mCallback:Lcom/android/internal/telephony/metrics/RcsStats$UceStatsWriterCallback;

    .line 805
    sget-object v0, Lcom/android/internal/telephony/metrics/RcsStats;->TAG:Ljava/lang/String;

    const-string v1, "UceStatsWriterCallback created."

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 806
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/RcsStats;->mCallback:Lcom/android/internal/telephony/metrics/RcsStats$UceStatsWriterCallback;

    invoke-static {p0}, Lcom/android/ims/rcs/uce/UceStatsWriter;->init(Lcom/android/ims/rcs/uce/UceStatsWriter$UceStatsCallback;)Lcom/android/ims/rcs/uce/UceStatsWriter;

    :cond_19
    return-void
.end method

.method public declared-synchronized blacklist reset()V
    .registers 3

    monitor-enter p0

    .line 1785
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/RcsStats;->mAtomsStorage:Lcom/android/internal/telephony/metrics/PersistAtomsStorage;

    if-eqz v0, :cond_5a

    iget-object v0, v0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    if-nez v0, :cond_a

    goto :goto_5a

    .line 1792
    :cond_a
    invoke-static {}, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationFeatureTagStats;->emptyArray()[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationFeatureTagStats;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsRegistrationFeatureTagStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationFeatureTagStats;

    .line 1794
    invoke-static {}, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsClientProvisioningStats;->emptyArray()[Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsClientProvisioningStats;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->rcsClientProvisioningStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsClientProvisioningStats;

    .line 1796
    invoke-static {}, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;->emptyArray()[Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->rcsAcsProvisioningStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;

    .line 1797
    invoke-static {}, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipDelegateStats;->emptyArray()[Lcom/android/internal/telephony/nano/PersistAtomsProto$SipDelegateStats;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->sipDelegateStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SipDelegateStats;

    .line 1799
    invoke-static {}, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportFeatureTagStats;->emptyArray()[Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportFeatureTagStats;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->sipTransportFeatureTagStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportFeatureTagStats;

    .line 1800
    invoke-static {}, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipMessageResponse;->emptyArray()[Lcom/android/internal/telephony/nano/PersistAtomsProto$SipMessageResponse;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->sipMessageResponse:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SipMessageResponse;

    .line 1801
    invoke-static {}, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportSession;->emptyArray()[Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportSession;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->sipTransportSession:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportSession;

    .line 1803
    invoke-static {}, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerListenerEvent;->emptyArray()[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerListenerEvent;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsDedicatedBearerListenerEvent:[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerListenerEvent;

    .line 1805
    invoke-static {}, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;->emptyArray()[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsDedicatedBearerEvent:[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;

    .line 1807
    invoke-static {}, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;->emptyArray()[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsRegistrationServiceDescStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;

    .line 1808
    invoke-static {}, Lcom/android/internal/telephony/nano/PersistAtomsProto$UceEventStats;->emptyArray()[Lcom/android/internal/telephony/nano/PersistAtomsProto$UceEventStats;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->uceEventStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$UceEventStats;

    .line 1809
    invoke-static {}, Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;->emptyArray()[Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->presenceNotifyEvent:[Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;

    .line 1810
    invoke-static {}, Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;->emptyArray()[Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->gbaEvent:[Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;
    :try_end_58
    .catchall {:try_start_1 .. :try_end_58} :catchall_5c

    .line 1811
    monitor-exit p0

    return-void

    .line 1786
    :cond_5a
    :goto_5a
    monitor-exit p0

    return-void

    :catchall_5c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized blacklist setEnableSingleRegistration(IZ)V
    .registers 4

    monitor-enter p0

    .line 1347
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/RcsStats;->mRcsProvisioningCallbackMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/telephony/metrics/RcsStats$RcsProvisioningCallback;

    if-eqz p1, :cond_12

    .line 1349
    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/metrics/RcsStats$RcsProvisioningCallback;->setEnableSingleRegistration(Z)V
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_14

    .line 1351
    :cond_12
    monitor-exit p0

    return-void

    :catchall_14
    move-exception p1

    monitor-exit p0

    throw p1
.end method
