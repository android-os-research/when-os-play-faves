.class public Lcom/android/server/sensorprivacy/PersistedState;
.super Ljava/lang/Object;
.source "PersistedState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/sensorprivacy/PersistedState$PVersion2;,
        Lcom/android/server/sensorprivacy/PersistedState$PVersion1;,
        Lcom/android/server/sensorprivacy/PersistedState$PVersion0;,
        Lcom/android/server/sensorprivacy/PersistedState$TypeUserSensor;
    }
.end annotation


# static fields
.field public static final CURRENT_PERSISTENCE_VERSION:I = 0x2

.field public static final CURRENT_VERSION:I = 0x2

.field public static final LOG_TAG:Ljava/lang/String; = "PersistedState"

.field public static final XML_ATTRIBUTE_LAST_CHANGE:Ljava/lang/String; = "last-change"

.field public static final XML_ATTRIBUTE_PERSISTENCE_VERSION:Ljava/lang/String; = "persistence-version"

.field public static final XML_ATTRIBUTE_SENSOR:Ljava/lang/String; = "sensor"

.field public static final XML_ATTRIBUTE_STATE_TYPE:Ljava/lang/String; = "state-type"

.field public static final XML_ATTRIBUTE_TOGGLE_TYPE:Ljava/lang/String; = "toggle-type"

.field public static final XML_ATTRIBUTE_USER_ID:Ljava/lang/String; = "user-id"

.field public static final XML_ATTRIBUTE_VERSION:Ljava/lang/String; = "version"

.field public static final XML_TAG_SENSOR_PRIVACY:Ljava/lang/String; = "sensor-privacy"

.field public static final XML_TAG_SENSOR_STATE:Ljava/lang/String; = "sensor-state"


# instance fields
.field public final mAtomicFile:Landroid/util/AtomicFile;

.field public mStates:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/android/server/sensorprivacy/PersistedState$TypeUserSensor;",
            "Lcom/android/server/sensorprivacy/SensorState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$b3459f6kMcHQi7IhYWJ2l6UPw28(Lcom/android/server/sensorprivacy/PersistedState;Landroid/util/ArrayMap;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/sensorprivacy/PersistedState;->persist(Landroid/util/ArrayMap;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetLOG_TAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/sensorprivacy/PersistedState;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 5

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/sensorprivacy/PersistedState;->mStates:Landroid/util/ArrayMap;

    .line 83
    new-instance v0, Landroid/util/AtomicFile;

    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/android/server/sensorprivacy/PersistedState;->mAtomicFile:Landroid/util/AtomicFile;

    .line 84
    invoke-virtual {p0}, Lcom/android/server/sensorprivacy/PersistedState;->readState()V

    return-void
.end method

.method public static fromFile(Ljava/lang/String;)Lcom/android/server/sensorprivacy/PersistedState;
    .registers 2

    .line 79
    new-instance v0, Lcom/android/server/sensorprivacy/PersistedState;

    invoke-direct {v0, p0}, Lcom/android/server/sensorprivacy/PersistedState;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static readPVersion0(Landroid/util/TypedXmlPullParser;Lcom/android/server/sensorprivacy/PersistedState$PVersion0;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 180
    invoke-static {p0}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 181
    :goto_3
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->getEventType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2f

    .line 182
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "individual-sensor-privacy"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    const-string/jumbo v0, "sensor"

    .line 183
    invoke-static {p0, v0}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v0

    const-string v1, "enabled"

    .line 184
    invoke-static {p0, v1}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    .line 186
    invoke-static {p1, v0, v1}, Lcom/android/server/sensorprivacy/PersistedState$PVersion0;->-$$Nest$maddState(Lcom/android/server/sensorprivacy/PersistedState$PVersion0;IZ)V

    .line 187
    invoke-static {p0}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_3

    .line 189
    :cond_2b
    invoke-static {p0}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_3

    :cond_2f
    return-void
.end method

.method public static readPVersion1(Landroid/util/TypedXmlPullParser;Lcom/android/server/sensorprivacy/PersistedState$PVersion1;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 196
    :cond_0
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->getEventType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_47

    .line 197
    invoke-static {p0}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 199
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "user"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const-string/jumbo v1, "id"

    .line 200
    invoke-interface {p0, v0, v1}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 201
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v2

    .line 202
    :cond_23
    :goto_23
    invoke-static {p0, v2}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 203
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "individual-sensor-privacy"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_23

    const-string/jumbo v3, "sensor"

    .line 204
    invoke-interface {p0, v0, v3}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const-string v4, "enabled"

    .line 205
    invoke-interface {p0, v0, v4}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 207
    invoke-static {p1, v1, v3, v4}, Lcom/android/server/sensorprivacy/PersistedState$PVersion1;->-$$Nest$maddState(Lcom/android/server/sensorprivacy/PersistedState$PVersion1;IIZ)V

    goto :goto_23

    :cond_47
    return-void
.end method

.method public static readPVersion2(Landroid/util/TypedXmlPullParser;Lcom/android/server/sensorprivacy/PersistedState$PVersion2;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 217
    :goto_0
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->getEventType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_44

    .line 218
    invoke-static {p0}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 220
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "sensor-state"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    const/4 v0, 0x0

    const-string/jumbo v1, "toggle-type"

    .line 221
    invoke-interface {p0, v0, v1}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const-string/jumbo v1, "user-id"

    .line 222
    invoke-interface {p0, v0, v1}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const-string/jumbo v1, "sensor"

    .line 223
    invoke-interface {p0, v0, v1}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    const-string/jumbo v1, "state-type"

    .line 224
    invoke-interface {p0, v0, v1}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    const-string/jumbo v1, "last-change"

    .line 225
    invoke-interface {p0, v0, v1}, Landroid/util/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v7

    move-object v2, p1

    .line 227
    invoke-static/range {v2 .. v8}, Lcom/android/server/sensorprivacy/PersistedState$PVersion2;->-$$Nest$maddState(Lcom/android/server/sensorprivacy/PersistedState$PVersion2;IIIIJ)V

    goto :goto_0

    .line 229
    :cond_40
    invoke-static {p0}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    :cond_44
    return-void
.end method


# virtual methods
.method public dump(Lcom/android/internal/util/dump/DualDumpOutputStream;)V
    .registers 22

    move-object/from16 v0, p0

    move-object/from16 v6, p1

    .line 328
    new-instance v7, Landroid/util/SparseArray;

    invoke-direct {v7}, Landroid/util/SparseArray;-><init>()V

    .line 329
    iget-object v1, v0, Lcom/android/server/sensorprivacy/PersistedState;->mStates:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_10
    if-ge v2, v1, :cond_57

    .line 331
    iget-object v3, v0, Lcom/android/server/sensorprivacy/PersistedState;->mStates:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/sensorprivacy/PersistedState$TypeUserSensor;

    iget v3, v3, Lcom/android/server/sensorprivacy/PersistedState$TypeUserSensor;->mType:I

    .line 332
    iget-object v4, v0, Lcom/android/server/sensorprivacy/PersistedState;->mStates:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/sensorprivacy/PersistedState$TypeUserSensor;

    iget v4, v4, Lcom/android/server/sensorprivacy/PersistedState$TypeUserSensor;->mUserId:I

    .line 333
    iget-object v5, v0, Lcom/android/server/sensorprivacy/PersistedState;->mStates:Landroid/util/ArrayMap;

    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/sensorprivacy/PersistedState$TypeUserSensor;

    iget v5, v5, Lcom/android/server/sensorprivacy/PersistedState$TypeUserSensor;->mSensor:I

    .line 335
    invoke-virtual {v7, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/SparseArray;

    if-nez v9, :cond_40

    .line 337
    new-instance v9, Landroid/util/SparseArray;

    invoke-direct {v9}, Landroid/util/SparseArray;-><init>()V

    .line 338
    invoke-virtual {v7, v4, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 340
    :cond_40
    new-instance v4, Landroid/util/Pair;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v10, v0, Lcom/android/server/sensorprivacy/PersistedState;->mStates:Landroid/util/ArrayMap;

    invoke-virtual {v10, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/sensorprivacy/SensorState;

    invoke-direct {v4, v3, v10}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v9, v5, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :cond_57
    const-wide v0, 0x10900000004L

    .line 343
    const-class v2, Lcom/android/server/sensorprivacy/SensorPrivacyStateControllerImpl;

    .line 345
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "storage_implementation"

    .line 343
    invoke-virtual {v6, v3, v0, v1, v2}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    .line 347
    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v9

    const/4 v10, 0x0

    :goto_6d
    if-ge v10, v9, :cond_122

    .line 349
    invoke-virtual {v7, v10}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    const-wide v1, 0x20b00000003L

    const-string/jumbo v3, "users"

    .line 350
    invoke-virtual {v6, v3, v1, v2}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v11

    const-string/jumbo v1, "user_id"

    const-wide v13, 0x10500000001L

    .line 351
    invoke-virtual {v6, v1, v13, v14, v0}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 352
    invoke-virtual {v7, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Landroid/util/SparseArray;

    .line 353
    invoke-virtual {v15}, Landroid/util/SparseArray;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_96
    if-ge v5, v4, :cond_119

    .line 355
    invoke-virtual {v15, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    .line 356
    invoke-virtual {v15, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 357
    invoke-virtual {v15, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/sensorprivacy/SensorState;

    move/from16 p0, v9

    const-wide v8, 0x20b00000004L

    const-string/jumbo v3, "sensors"

    .line 358
    invoke-virtual {v6, v3, v8, v9}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v8

    const-string/jumbo v3, "sensor"

    .line 359
    invoke-virtual {v6, v3, v13, v14, v0}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    const-wide v13, 0x20b00000002L

    const-string/jumbo v0, "toggles"

    .line 360
    invoke-virtual {v6, v0, v13, v14}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v13

    move/from16 v16, v4

    const-wide v3, 0x10e00000004L

    const-string/jumbo v0, "toggle_type"

    .line 361
    invoke-virtual {v6, v0, v3, v4, v1}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    const-wide v0, 0x10e00000005L

    .line 366
    invoke-virtual {v2}, Lcom/android/server/sensorprivacy/SensorState;->getState()I

    move-result v3

    const-string/jumbo v4, "state_type"

    .line 364
    invoke-virtual {v6, v4, v0, v1, v3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    const-wide v3, 0x10300000003L

    .line 369
    invoke-virtual {v2}, Lcom/android/server/sensorprivacy/SensorState;->getLastChange()J

    move-result-wide v17

    const-string/jumbo v1, "last_change"

    move-object/from16 v0, p1

    move-wide v2, v3

    move/from16 v19, v5

    move-wide/from16 v4, v17

    .line 367
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JJ)V

    .line 370
    invoke-virtual {v6, v13, v14}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    .line 371
    invoke-virtual {v6, v8, v9}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    add-int/lit8 v5, v19, 0x1

    const-wide v13, 0x10500000001L

    move/from16 v9, p0

    move/from16 v4, v16

    goto/16 :goto_96

    :cond_119
    move/from16 p0, v9

    .line 373
    invoke-virtual {v6, v11, v12}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_6d

    :cond_122
    return-void
.end method

.method public forEachKnownState(Lcom/android/internal/util/function/QuadConsumer;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/function/QuadConsumer<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Lcom/android/server/sensorprivacy/SensorState;",
            ">;)V"
        }
    .end annotation

    .line 378
    iget-object v0, p0, Lcom/android/server/sensorprivacy/PersistedState;->mStates:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_31

    .line 380
    iget-object v2, p0, Lcom/android/server/sensorprivacy/PersistedState;->mStates:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/sensorprivacy/PersistedState$TypeUserSensor;

    .line 381
    iget-object v3, p0, Lcom/android/server/sensorprivacy/PersistedState;->mStates:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/sensorprivacy/SensorState;

    .line 382
    iget v4, v2, Lcom/android/server/sensorprivacy/PersistedState$TypeUserSensor;->mType:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, v2, Lcom/android/server/sensorprivacy/PersistedState$TypeUserSensor;->mUserId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v2, v2, Lcom/android/server/sensorprivacy/PersistedState$TypeUserSensor;->mSensor:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v4, v5, v2, v3}, Lcom/android/internal/util/function/QuadConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_31
    return-void
.end method

.method public getState(III)Lcom/android/server/sensorprivacy/SensorState;
    .registers 5

    .line 235
    iget-object p0, p0, Lcom/android/server/sensorprivacy/PersistedState;->mStates:Landroid/util/ArrayMap;

    new-instance v0, Lcom/android/server/sensorprivacy/PersistedState$TypeUserSensor;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/sensorprivacy/PersistedState$TypeUserSensor;-><init>(III)V

    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/sensorprivacy/SensorState;

    return-object p0
.end method

.method public final persist(Landroid/util/ArrayMap;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Lcom/android/server/sensorprivacy/PersistedState$TypeUserSensor;",
            "Lcom/android/server/sensorprivacy/SensorState;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "sensor-state"

    const-string/jumbo v1, "sensor-privacy"

    const/4 v2, 0x0

    .line 287
    :try_start_7
    iget-object v3, p0, Lcom/android/server/sensorprivacy/PersistedState;->mAtomicFile:Landroid/util/AtomicFile;

    invoke-virtual {v3}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v3
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_d} :catch_83

    .line 288
    :try_start_d
    invoke-static {v3}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Landroid/util/TypedXmlSerializer;

    move-result-object v4

    .line 289
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v4, v2, v5}, Landroid/util/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 290
    invoke-interface {v4, v2, v1}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v5, "persistence-version"

    const/4 v6, 0x2

    .line 291
    invoke-interface {v4, v2, v5, v6}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v5, "version"

    .line 293
    invoke-interface {v4, v2, v5, v6}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v5, 0x0

    .line 294
    :goto_27
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v6

    if-ge v5, v6, :cond_74

    .line 295
    invoke-virtual {p1, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/sensorprivacy/PersistedState$TypeUserSensor;

    .line 296
    invoke-virtual {p1, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/sensorprivacy/SensorState;

    .line 299
    iget v8, v6, Lcom/android/server/sensorprivacy/PersistedState$TypeUserSensor;->mType:I

    const/4 v9, 0x1

    if-eq v8, v9, :cond_3f

    goto :goto_71

    .line 303
    :cond_3f
    invoke-interface {v4, v2, v0}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v8, "toggle-type"

    .line 304
    iget v9, v6, Lcom/android/server/sensorprivacy/PersistedState$TypeUserSensor;->mType:I

    invoke-interface {v4, v2, v8, v9}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v8, "user-id"

    .line 306
    iget v9, v6, Lcom/android/server/sensorprivacy/PersistedState$TypeUserSensor;->mUserId:I

    invoke-interface {v4, v2, v8, v9}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v8, "sensor"

    .line 308
    iget v6, v6, Lcom/android/server/sensorprivacy/PersistedState$TypeUserSensor;->mSensor:I

    invoke-interface {v4, v2, v8, v6}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v6, "state-type"

    .line 311
    invoke-virtual {v7}, Lcom/android/server/sensorprivacy/SensorState;->getState()I

    move-result v8

    .line 310
    invoke-interface {v4, v2, v6, v8}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v6, "last-change"

    .line 313
    invoke-virtual {v7}, Lcom/android/server/sensorprivacy/SensorState;->getLastChange()J

    move-result-wide v7

    .line 312
    invoke-interface {v4, v2, v6, v7, v8}, Landroid/util/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 314
    invoke-interface {v4, v2, v0}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :goto_71
    add-int/lit8 v5, v5, 0x1

    goto :goto_27

    .line 317
    :cond_74
    invoke-interface {v4, v2, v1}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 318
    invoke-interface {v4}, Landroid/util/TypedXmlSerializer;->endDocument()V

    .line 319
    iget-object p1, p0, Lcom/android/server/sensorprivacy/PersistedState;->mAtomicFile:Landroid/util/AtomicFile;

    invoke-virtual {p1, v3}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_7f
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_7f} :catch_80

    goto :goto_90

    :catch_80
    move-exception p1

    move-object v2, v3

    goto :goto_84

    :catch_83
    move-exception p1

    .line 321
    :goto_84
    sget-object v0, Lcom/android/server/sensorprivacy/PersistedState;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Caught an exception persisting the sensor privacy state: "

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 322
    iget-object p0, p0, Lcom/android/server/sensorprivacy/PersistedState;->mAtomicFile:Landroid/util/AtomicFile;

    invoke-virtual {p0, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    :goto_90
    return-void
.end method

.method public final readState()V
    .registers 11

    .line 88
    iget-object v0, p0, Lcom/android/server/sensorprivacy/PersistedState;->mAtomicFile:Landroid/util/AtomicFile;

    .line 89
    invoke-virtual {v0}, Landroid/util/AtomicFile;->exists()Z

    move-result v1

    const-string/jumbo v2, "sensor-privacy"

    const-string v3, "Caught an exception reading the state from storage: "

    if-nez v1, :cond_53

    .line 90
    new-instance v1, Landroid/util/AtomicFile;

    new-instance v4, Ljava/io/File;

    .line 91
    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v5

    const-string/jumbo v6, "sensor_privacy.xml"

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v1, v4}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 94
    invoke-virtual {v1}, Landroid/util/AtomicFile;->exists()Z

    move-result v4

    if-eqz v4, :cond_53

    .line 96
    :try_start_24
    invoke-virtual {v1}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v4
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_28} :catch_46
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_24 .. :try_end_28} :catch_53

    .line 97
    :try_start_28
    invoke-static {v4}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Landroid/util/TypedXmlPullParser;

    move-result-object v5

    .line 98
    invoke-static {v5, v2}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V
    :try_end_2f
    .catchall {:try_start_28 .. :try_end_2f} :catchall_3a

    if-eqz v4, :cond_38

    .line 100
    :try_start_31
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_34} :catch_35
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_31 .. :try_end_34} :catch_38

    goto :goto_38

    :catch_35
    move-exception v0

    move-object v4, v1

    goto :goto_4a

    :catch_38
    :cond_38
    :goto_38
    move-object v0, v1

    goto :goto_53

    :catchall_3a
    move-exception v5

    if-eqz v4, :cond_45

    .line 96
    :try_start_3d
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_40
    .catchall {:try_start_3d .. :try_end_40} :catchall_41

    goto :goto_45

    :catchall_41
    move-exception v4

    :try_start_42
    invoke-virtual {v5, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_45
    :goto_45
    throw v5
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_46} :catch_46
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_42 .. :try_end_46} :catch_53

    :catch_46
    move-exception v4

    move-object v9, v4

    move-object v4, v0

    move-object v0, v9

    .line 101
    :goto_4a
    sget-object v5, Lcom/android/server/sensorprivacy/PersistedState;->LOG_TAG:Ljava/lang/String;

    invoke-static {v5, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 104
    invoke-virtual {v1}, Landroid/util/AtomicFile;->delete()V

    move-object v0, v4

    .line 112
    :catch_53
    :cond_53
    :goto_53
    invoke-virtual {v0}, Landroid/util/AtomicFile;->exists()Z

    move-result v1

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-eqz v1, :cond_db

    .line 113
    :try_start_5b
    invoke-virtual {v0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v1
    :try_end_5f
    .catch Ljava/io/IOException; {:try_start_5b .. :try_end_5f} :catch_d2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5b .. :try_end_5f} :catch_d2
    .catch Ljava/lang/RuntimeException; {:try_start_5b .. :try_end_5f} :catch_d2

    .line 114
    :try_start_5f
    invoke-static {v1}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Landroid/util/TypedXmlPullParser;

    move-result-object v6

    .line 115
    invoke-static {v6, v2}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    const-string/jumbo v2, "persistence-version"

    const/4 v7, 0x0

    .line 116
    invoke-interface {v6, v5, v2, v7}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_79

    .line 123
    new-instance v2, Lcom/android/server/sensorprivacy/PersistedState$PVersion0;

    invoke-direct {v2, v7, v5}, Lcom/android/server/sensorprivacy/PersistedState$PVersion0;-><init>(ILcom/android/server/sensorprivacy/PersistedState$PVersion0-IA;)V

    .line 125
    invoke-static {v6, v2}, Lcom/android/server/sensorprivacy/PersistedState;->readPVersion0(Landroid/util/TypedXmlPullParser;Lcom/android/server/sensorprivacy/PersistedState$PVersion0;)V
    :try_end_78
    .catchall {:try_start_5f .. :try_end_78} :catchall_c6

    goto :goto_c0

    :cond_79
    const-string/jumbo v7, "version"

    const/4 v8, 0x1

    if-ne v2, v8, :cond_8d

    .line 127
    :try_start_7f
    invoke-interface {v6, v5, v7, v8}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    .line 129
    new-instance v7, Lcom/android/server/sensorprivacy/PersistedState$PVersion1;

    invoke-direct {v7, v2, v5}, Lcom/android/server/sensorprivacy/PersistedState$PVersion1;-><init>(ILcom/android/server/sensorprivacy/PersistedState$PVersion1-IA;)V

    .line 132
    invoke-static {v6, v7}, Lcom/android/server/sensorprivacy/PersistedState;->readPVersion1(Landroid/util/TypedXmlPullParser;Lcom/android/server/sensorprivacy/PersistedState$PVersion1;)V

    :goto_8b
    move-object v2, v7

    goto :goto_c0

    :cond_8d
    if-ne v2, v4, :cond_9c

    .line 134
    invoke-interface {v6, v5, v7, v4}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    .line 136
    new-instance v7, Lcom/android/server/sensorprivacy/PersistedState$PVersion2;

    invoke-direct {v7, v2, v5}, Lcom/android/server/sensorprivacy/PersistedState$PVersion2;-><init>(ILcom/android/server/sensorprivacy/PersistedState$PVersion2-IA;)V

    .line 139
    invoke-static {v6, v7}, Lcom/android/server/sensorprivacy/PersistedState;->readPVersion2(Landroid/util/TypedXmlPullParser;Lcom/android/server/sensorprivacy/PersistedState$PVersion2;)V

    goto :goto_8b

    .line 141
    :cond_9c
    sget-object v6, Lcom/android/server/sensorprivacy/PersistedState;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown persistence version: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ". Deleting."

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v7, Ljava/lang/RuntimeException;

    invoke-direct {v7}, Ljava/lang/RuntimeException;-><init>()V

    invoke-static {v6, v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 144
    invoke-virtual {v0}, Landroid/util/AtomicFile;->delete()V
    :try_end_bf
    .catchall {:try_start_7f .. :try_end_bf} :catchall_c6

    move-object v2, v5

    :goto_c0
    if-eqz v1, :cond_dc

    .line 148
    :try_start_c2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_c5
    .catch Ljava/io/IOException; {:try_start_c2 .. :try_end_c5} :catch_d2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_c2 .. :try_end_c5} :catch_d2
    .catch Ljava/lang/RuntimeException; {:try_start_c2 .. :try_end_c5} :catch_d2

    goto :goto_dc

    :catchall_c6
    move-exception v2

    if-eqz v1, :cond_d1

    .line 113
    :try_start_c9
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_cc
    .catchall {:try_start_c9 .. :try_end_cc} :catchall_cd

    goto :goto_d1

    :catchall_cd
    move-exception v1

    :try_start_ce
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_d1
    :goto_d1
    throw v2
    :try_end_d2
    .catch Ljava/io/IOException; {:try_start_ce .. :try_end_d2} :catch_d2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_ce .. :try_end_d2} :catch_d2
    .catch Ljava/lang/RuntimeException; {:try_start_ce .. :try_end_d2} :catch_d2

    :catch_d2
    move-exception v1

    .line 149
    sget-object v2, Lcom/android/server/sensorprivacy/PersistedState;->LOG_TAG:Ljava/lang/String;

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 152
    invoke-virtual {v0}, Landroid/util/AtomicFile;->delete()V

    :cond_db
    move-object v2, v5

    :cond_dc
    :goto_dc
    if-nez v2, :cond_e3

    .line 159
    new-instance v2, Lcom/android/server/sensorprivacy/PersistedState$PVersion2;

    invoke-direct {v2, v4, v5}, Lcom/android/server/sensorprivacy/PersistedState$PVersion2;-><init>(ILcom/android/server/sensorprivacy/PersistedState$PVersion2-IA;)V

    .line 162
    :cond_e3
    instance-of v0, v2, Lcom/android/server/sensorprivacy/PersistedState$PVersion0;

    if-eqz v0, :cond_ed

    .line 163
    check-cast v2, Lcom/android/server/sensorprivacy/PersistedState$PVersion0;

    invoke-static {v2}, Lcom/android/server/sensorprivacy/PersistedState$PVersion1;->-$$Nest$smfromPVersion0(Lcom/android/server/sensorprivacy/PersistedState$PVersion0;)Lcom/android/server/sensorprivacy/PersistedState$PVersion1;

    move-result-object v2

    .line 165
    :cond_ed
    instance-of v0, v2, Lcom/android/server/sensorprivacy/PersistedState$PVersion1;

    if-eqz v0, :cond_f7

    .line 166
    check-cast v2, Lcom/android/server/sensorprivacy/PersistedState$PVersion1;

    invoke-static {v2}, Lcom/android/server/sensorprivacy/PersistedState$PVersion2;->-$$Nest$smfromPVersion1(Lcom/android/server/sensorprivacy/PersistedState$PVersion1;)Lcom/android/server/sensorprivacy/PersistedState$PVersion2;

    move-result-object v2

    .line 168
    :cond_f7
    instance-of v0, v2, Lcom/android/server/sensorprivacy/PersistedState$PVersion2;

    if-eqz v0, :cond_104

    .line 169
    check-cast v2, Lcom/android/server/sensorprivacy/PersistedState$PVersion2;

    .line 170
    invoke-static {v2}, Lcom/android/server/sensorprivacy/PersistedState$PVersion2;->-$$Nest$fgetmStates(Lcom/android/server/sensorprivacy/PersistedState$PVersion2;)Landroid/util/ArrayMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/sensorprivacy/PersistedState;->mStates:Landroid/util/ArrayMap;

    goto :goto_112

    .line 172
    :cond_104
    sget-object v0, Lcom/android/server/sensorprivacy/PersistedState;->LOG_TAG:Ljava/lang/String;

    const-string v1, "State not successfully upgraded."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/sensorprivacy/PersistedState;->mStates:Landroid/util/ArrayMap;

    :goto_112
    return-void
.end method

.method public resetForTesting()V
    .registers 2

    .line 497
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/sensorprivacy/PersistedState;->mStates:Landroid/util/ArrayMap;

    return-void
.end method

.method public schedulePersist()V
    .registers 7

    .line 273
    iget-object v0, p0, Lcom/android/server/sensorprivacy/PersistedState;->mStates:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 275
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    const/4 v2, 0x0

    :goto_c
    if-ge v2, v0, :cond_2e

    .line 277
    new-instance v3, Lcom/android/server/sensorprivacy/PersistedState$TypeUserSensor;

    iget-object v4, p0, Lcom/android/server/sensorprivacy/PersistedState;->mStates:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/sensorprivacy/PersistedState$TypeUserSensor;

    invoke-direct {v3, v4}, Lcom/android/server/sensorprivacy/PersistedState$TypeUserSensor;-><init>(Lcom/android/server/sensorprivacy/PersistedState$TypeUserSensor;)V

    new-instance v4, Lcom/android/server/sensorprivacy/SensorState;

    iget-object v5, p0, Lcom/android/server/sensorprivacy/PersistedState;->mStates:Landroid/util/ArrayMap;

    .line 278
    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/sensorprivacy/SensorState;

    invoke-direct {v4, v5}, Lcom/android/server/sensorprivacy/SensorState;-><init>(Lcom/android/server/sensorprivacy/SensorState;)V

    .line 277
    invoke-virtual {v1, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 280
    :cond_2e
    invoke-static {}, Lcom/android/server/IoThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v2, Lcom/android/server/sensorprivacy/PersistedState$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/android/server/sensorprivacy/PersistedState$$ExternalSyntheticLambda0;-><init>()V

    .line 281
    invoke-static {v2, p0, v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 280
    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public setState(IIILcom/android/server/sensorprivacy/SensorState;)Lcom/android/server/sensorprivacy/SensorState;
    .registers 6

    .line 239
    iget-object p0, p0, Lcom/android/server/sensorprivacy/PersistedState;->mStates:Landroid/util/ArrayMap;

    new-instance v0, Lcom/android/server/sensorprivacy/PersistedState$TypeUserSensor;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/sensorprivacy/PersistedState$TypeUserSensor;-><init>(III)V

    invoke-virtual {p0, v0, p4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/sensorprivacy/SensorState;

    return-object p0
.end method
