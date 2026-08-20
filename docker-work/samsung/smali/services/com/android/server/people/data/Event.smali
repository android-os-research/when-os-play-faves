.class public Lcom/android/server/people/data/Event;
.super Ljava/lang/Object;
.source "Event.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/people/data/Event$Builder;,
        Lcom/android/server/people/data/Event$EventType;
    }
.end annotation


# static fields
.field public static final ALL_EVENT_TYPES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final CALL_EVENT_TYPES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final NOTIFICATION_EVENT_TYPES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final SHARE_EVENT_TYPES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final SMS_EVENT_TYPES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final TAG:Ljava/lang/String; = "Event"

.field public static final TYPE_CALL_INCOMING:I = 0xb

.field public static final TYPE_CALL_MISSED:I = 0xc

.field public static final TYPE_CALL_OUTGOING:I = 0xa

.field public static final TYPE_IN_APP_CONVERSATION:I = 0xd

.field public static final TYPE_NOTIFICATION_OPENED:I = 0x3

.field public static final TYPE_NOTIFICATION_POSTED:I = 0x2

.field public static final TYPE_SHARE_IMAGE:I = 0x5

.field public static final TYPE_SHARE_OTHER:I = 0x7

.field public static final TYPE_SHARE_TEXT:I = 0x4

.field public static final TYPE_SHARE_VIDEO:I = 0x6

.field public static final TYPE_SHORTCUT_INVOCATION:I = 0x1

.field public static final TYPE_SMS_INCOMING:I = 0x9

.field public static final TYPE_SMS_OUTGOING:I = 0x8


# instance fields
.field public final mDurationSeconds:I

.field public final mTimestamp:J

.field public final mType:I


# direct methods
.method public static constructor <clinit>()V
    .registers 6

    .line 84
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/people/data/Event;->NOTIFICATION_EVENT_TYPES:Ljava/util/Set;

    .line 85
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    sput-object v1, Lcom/android/server/people/data/Event;->SHARE_EVENT_TYPES:Ljava/util/Set;

    .line 86
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    sput-object v2, Lcom/android/server/people/data/Event;->SMS_EVENT_TYPES:Ljava/util/Set;

    .line 87
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    sput-object v3, Lcom/android/server/people/data/Event;->CALL_EVENT_TYPES:Ljava/util/Set;

    .line 88
    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    sput-object v4, Lcom/android/server/people/data/Event;->ALL_EVENT_TYPES:Ljava/util/Set;

    const/4 v5, 0x2

    .line 91
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x3

    .line 92
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x4

    .line 94
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x5

    .line 95
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x6

    .line 96
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x7

    .line 97
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/16 v5, 0x9

    .line 99
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/16 v5, 0x8

    .line 100
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/16 v5, 0xb

    .line 102
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/16 v5, 0xa

    .line 103
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/16 v5, 0xc

    .line 104
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x1

    .line 106
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/16 v5, 0xd

    .line 107
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 108
    invoke-interface {v4, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 109
    invoke-interface {v4, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 110
    invoke-interface {v4, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 111
    invoke-interface {v4, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public constructor <init>(JI)V
    .registers 4

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    iput-wide p1, p0, Lcom/android/server/people/data/Event;->mTimestamp:J

    .line 122
    iput p3, p0, Lcom/android/server/people/data/Event;->mType:I

    const/4 p1, 0x0

    .line 123
    iput p1, p0, Lcom/android/server/people/data/Event;->mDurationSeconds:I

    return-void
.end method

.method public constructor <init>(Lcom/android/server/people/data/Event$Builder;)V
    .registers 4

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    invoke-static {p1}, Lcom/android/server/people/data/Event$Builder;->-$$Nest$fgetmTimestamp(Lcom/android/server/people/data/Event$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/people/data/Event;->mTimestamp:J

    .line 128
    invoke-static {p1}, Lcom/android/server/people/data/Event$Builder;->-$$Nest$fgetmType(Lcom/android/server/people/data/Event$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/server/people/data/Event;->mType:I

    .line 129
    invoke-static {p1}, Lcom/android/server/people/data/Event$Builder;->-$$Nest$fgetmDurationSeconds(Lcom/android/server/people/data/Event$Builder;)I

    move-result p1

    iput p1, p0, Lcom/android/server/people/data/Event;->mDurationSeconds:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/people/data/Event$Builder;Lcom/android/server/people/data/Event-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/people/data/Event;-><init>(Lcom/android/server/people/data/Event$Builder;)V

    return-void
.end method

.method public static readFromProto(Landroid/util/proto/ProtoInputStream;)Lcom/android/server/people/data/Event;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 163
    new-instance v0, Lcom/android/server/people/data/Event$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/people/data/Event$Builder;-><init>(Lcom/android/server/people/data/Event$Builder-IA;)V

    .line 164
    :goto_6
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_5c

    .line 165
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_4f

    const/4 v2, 0x2

    if-eq v1, v2, :cond_42

    const/4 v2, 0x3

    if-eq v1, v2, :cond_35

    .line 176
    sget-object v1, Lcom/android/server/people/data/Event;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not read undefined field: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 176
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_35
    const-wide v1, 0x10500000003L

    .line 173
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/people/data/Event$Builder;->setDurationSeconds(I)Lcom/android/server/people/data/Event$Builder;

    goto :goto_6

    :cond_42
    const-wide v1, 0x10300000002L

    .line 170
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/android/server/people/data/Event$Builder;->-$$Nest$msetTimestamp(Lcom/android/server/people/data/Event$Builder;J)Lcom/android/server/people/data/Event$Builder;

    goto :goto_6

    :cond_4f
    const-wide v1, 0x10500000001L

    .line 167
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/people/data/Event$Builder;->-$$Nest$msetType(Lcom/android/server/people/data/Event$Builder;I)Lcom/android/server/people/data/Event$Builder;

    goto :goto_6

    .line 180
    :cond_5c
    invoke-virtual {v0}, Lcom/android/server/people/data/Event$Builder;->build()Lcom/android/server/people/data/Event;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 188
    :cond_4
    instance-of v1, p1, Lcom/android/server/people/data/Event;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 191
    :cond_a
    check-cast p1, Lcom/android/server/people/data/Event;

    .line 192
    iget-wide v3, p0, Lcom/android/server/people/data/Event;->mTimestamp:J

    iget-wide v5, p1, Lcom/android/server/people/data/Event;->mTimestamp:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_21

    iget v1, p0, Lcom/android/server/people/data/Event;->mType:I

    iget v3, p1, Lcom/android/server/people/data/Event;->mType:I

    if-ne v1, v3, :cond_21

    iget p0, p0, Lcom/android/server/people/data/Event;->mDurationSeconds:I

    iget p1, p1, Lcom/android/server/people/data/Event;->mDurationSeconds:I

    if-ne p0, p1, :cond_21

    goto :goto_22

    :cond_21
    move v0, v2

    :goto_22
    return v0
.end method

.method public getDurationSeconds()I
    .registers 1

    .line 150
    iget p0, p0, Lcom/android/server/people/data/Event;->mDurationSeconds:I

    return p0
.end method

.method public getTimestamp()J
    .registers 3

    .line 133
    iget-wide v0, p0, Lcom/android/server/people/data/Event;->mTimestamp:J

    return-wide v0
.end method

.method public getType()I
    .registers 1

    .line 137
    iget p0, p0, Lcom/android/server/people/data/Event;->mType:I

    return p0
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 199
    iget-wide v1, p0, Lcom/android/server/people/data/Event;->mTimestamp:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/server/people/data/Event;->mType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget p0, p0, Lcom/android/server/people/data/Event;->mDurationSeconds:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x2

    aput-object p0, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Event {"

    .line 205
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "timestamp="

    .line 206
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/people/data/Event;->mTimestamp:J

    const-string/jumbo v3, "yyyy-MM-dd HH:mm:ss"

    invoke-static {v3, v1, v2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    .line 207
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/people/data/Event;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 208
    iget v1, p0, Lcom/android/server/people/data/Event;->mDurationSeconds:I

    if-lez v1, :cond_34

    const-string v1, ", durationSeconds="

    .line 209
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/people/data/Event;->mDurationSeconds:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_34
    const-string/jumbo p0, "}"

    .line 211
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToProto(Landroid/util/proto/ProtoOutputStream;)V
    .registers 6

    .line 155
    iget v0, p0, Lcom/android/server/people/data/Event;->mType:I

    const-wide v1, 0x10500000001L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 156
    iget-wide v0, p0, Lcom/android/server/people/data/Event;->mTimestamp:J

    const-wide v2, 0x10300000002L

    invoke-virtual {p1, v2, v3, v0, v1}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 157
    iget p0, p0, Lcom/android/server/people/data/Event;->mDurationSeconds:I

    const-wide v0, 0x10500000003L

    invoke-virtual {p1, v0, v1, p0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    return-void
.end method
