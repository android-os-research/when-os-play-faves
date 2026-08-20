.class public Lcom/android/location/provider/ActivityRecognitionEvent;
.super Ljava/lang/Object;
.source "ActivityRecognitionEvent.java"


# instance fields
.field private final mActivity:Ljava/lang/String;

.field private final mEventType:I

.field private final mTimestampNs:J


# direct methods
.method public constructor <init>(Ljava/lang/String;IJ)V
    .registers 5
    .param p1, "activity"    # Ljava/lang/String;
    .param p2, "eventType"    # I
    .param p3, "timestampNs"    # J

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/android/location/provider/ActivityRecognitionEvent;->mActivity:Ljava/lang/String;

    .line 30
    iput p2, p0, Lcom/android/location/provider/ActivityRecognitionEvent;->mEventType:I

    .line 31
    iput-wide p3, p0, Lcom/android/location/provider/ActivityRecognitionEvent;->mTimestampNs:J

    .line 32
    return-void
.end method


# virtual methods
.method public getActivity()Ljava/lang/String;
    .registers 2

    .line 35
    iget-object v0, p0, Lcom/android/location/provider/ActivityRecognitionEvent;->mActivity:Ljava/lang/String;

    return-object v0
.end method

.method public getEventType()I
    .registers 2

    .line 39
    iget v0, p0, Lcom/android/location/provider/ActivityRecognitionEvent;->mEventType:I

    return v0
.end method

.method public getTimestampNs()J
    .registers 3

    .line 43
    iget-wide v0, p0, Lcom/android/location/provider/ActivityRecognitionEvent;->mTimestampNs:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .line 49
    iget v0, p0, Lcom/android/location/provider/ActivityRecognitionEvent;->mEventType:I

    packed-switch v0, :pswitch_data_34

    .line 60
    const-string v1, "<Invalid>"

    .local v1, "eventString":Ljava/lang/String;
    goto :goto_11

    .line 54
    .end local v1    # "eventString":Ljava/lang/String;
    :pswitch_8
    const-string v1, "Exit"

    .line 55
    .restart local v1    # "eventString":Ljava/lang/String;
    goto :goto_11

    .line 51
    .end local v1    # "eventString":Ljava/lang/String;
    :pswitch_b
    const-string v1, "Enter"

    .line 52
    .restart local v1    # "eventString":Ljava/lang/String;
    goto :goto_11

    .line 57
    .end local v1    # "eventString":Ljava/lang/String;
    :pswitch_e
    const-string v1, "FlushComplete"

    .line 58
    .restart local v1    # "eventString":Ljava/lang/String;
    nop

    .line 64
    :goto_11
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/location/provider/ActivityRecognitionEvent;->mActivity:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v1, v2, v3

    const/4 v3, 0x2

    .line 68
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    const/4 v0, 0x3

    iget-wide v3, p0, Lcom/android/location/provider/ActivityRecognitionEvent;->mTimestampNs:J

    .line 69
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v0

    .line 64
    const-string v0, "Activity=\'%s\', EventType=%s(%s), TimestampNs=%s"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_34
    .packed-switch 0x0
        :pswitch_e
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method
