.class public Lcom/android/server/location/nsflp/NSKmlWriter$DebugInfo;
.super Ljava/lang/Object;
.source "NSKmlWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/nsflp/NSKmlWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DebugInfo"
.end annotation


# instance fields
.field public final lastInterval:Ljava/lang/String;

.field public final latitude:Ljava/lang/String;

.field public final longitude:Ljava/lang/String;

.field public final message:Ljava/lang/String;

.field public final receivedTime:Ljava/lang/String;

.field public final sessionNumber:J

.field public final time:Ljava/lang/String;

.field public final type:Ljava/lang/String;


# direct methods
.method public static bridge synthetic -$$Nest$fgetlastInterval(Lcom/android/server/location/nsflp/NSKmlWriter$DebugInfo;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/server/location/nsflp/NSKmlWriter$DebugInfo;->lastInterval:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetlatitude(Lcom/android/server/location/nsflp/NSKmlWriter$DebugInfo;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/server/location/nsflp/NSKmlWriter$DebugInfo;->latitude:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetlongitude(Lcom/android/server/location/nsflp/NSKmlWriter$DebugInfo;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/server/location/nsflp/NSKmlWriter$DebugInfo;->longitude:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmessage(Lcom/android/server/location/nsflp/NSKmlWriter$DebugInfo;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/server/location/nsflp/NSKmlWriter$DebugInfo;->message:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetreceivedTime(Lcom/android/server/location/nsflp/NSKmlWriter$DebugInfo;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/server/location/nsflp/NSKmlWriter$DebugInfo;->receivedTime:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetsessionNumber(Lcom/android/server/location/nsflp/NSKmlWriter$DebugInfo;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/location/nsflp/NSKmlWriter$DebugInfo;->sessionNumber:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgettime(Lcom/android/server/location/nsflp/NSKmlWriter$DebugInfo;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/server/location/nsflp/NSKmlWriter$DebugInfo;->time:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgettype(Lcom/android/server/location/nsflp/NSKmlWriter$DebugInfo;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/server/location/nsflp/NSKmlWriter$DebugInfo;->type:Ljava/lang/String;

    return-object p0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    .line 589
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 590
    iput-object p1, p0, Lcom/android/server/location/nsflp/NSKmlWriter$DebugInfo;->receivedTime:Ljava/lang/String;

    .line 591
    iput-object p2, p0, Lcom/android/server/location/nsflp/NSKmlWriter$DebugInfo;->type:Ljava/lang/String;

    .line 592
    iput-wide p3, p0, Lcom/android/server/location/nsflp/NSKmlWriter$DebugInfo;->sessionNumber:J

    .line 593
    iput-object p5, p0, Lcom/android/server/location/nsflp/NSKmlWriter$DebugInfo;->latitude:Ljava/lang/String;

    .line 594
    iput-object p6, p0, Lcom/android/server/location/nsflp/NSKmlWriter$DebugInfo;->longitude:Ljava/lang/String;

    .line 595
    iput-object p7, p0, Lcom/android/server/location/nsflp/NSKmlWriter$DebugInfo;->time:Ljava/lang/String;

    .line 596
    iput-object p8, p0, Lcom/android/server/location/nsflp/NSKmlWriter$DebugInfo;->lastInterval:Ljava/lang/String;

    .line 597
    iput-object p9, p0, Lcom/android/server/location/nsflp/NSKmlWriter$DebugInfo;->message:Ljava/lang/String;

    return-void
.end method
