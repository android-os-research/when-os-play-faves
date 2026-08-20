.class public final Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;
.super Ljava/lang/Object;
.source "DiscreteRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/appop/DiscreteRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "DiscreteOpEvent"
.end annotation


# instance fields
.field public final mAttributionChainId:I

.field public final mAttributionFlags:I

.field public final mNoteDuration:J

.field public final mNoteTime:J

.field public final mOpFlag:I

.field public final mUidState:I

.field public final synthetic this$0:Lcom/android/server/appop/DiscreteRegistry;


# direct methods
.method public static bridge synthetic -$$Nest$mdump(Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;Ljava/io/PrintWriter;Ljava/text/SimpleDateFormat;Ljava/util/Date;Ljava/lang/String;)V
    .registers 5

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->dump(Ljava/io/PrintWriter;Ljava/text/SimpleDateFormat;Ljava/util/Date;Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mserialize(Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;Landroid/util/TypedXmlSerializer;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->serialize(Landroid/util/TypedXmlSerializer;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/appop/DiscreteRegistry;JJIIII)V
    .registers 10

    .line 1265
    iput-object p1, p0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->this$0:Lcom/android/server/appop/DiscreteRegistry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1266
    iput-wide p2, p0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mNoteTime:J

    .line 1267
    iput-wide p4, p0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mNoteDuration:J

    .line 1268
    iput p6, p0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mUidState:I

    .line 1269
    iput p7, p0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mOpFlag:I

    .line 1270
    iput p8, p0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mAttributionFlags:I

    .line 1271
    iput p9, p0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mAttributionChainId:I

    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;Ljava/text/SimpleDateFormat;Ljava/util/Date;Ljava/lang/String;)V
    .registers 7

    .line 1283
    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p4, "Access ["

    .line 1284
    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1285
    iget p4, p0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mUidState:I

    invoke-static {p4}, Landroid/app/AppOpsManager;->getUidStateName(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p4, "-"

    .line 1286
    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1287
    iget p4, p0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mOpFlag:I

    invoke-static {p4}, Landroid/app/AppOpsManager;->flagsToString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p4, "] at "

    .line 1288
    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1289
    iget-wide v0, p0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mNoteTime:J

    invoke-static {v0, v1}, Lcom/android/server/appop/DiscreteRegistry;->-$$Nest$smdiscretizeTimeStamp(J)J

    move-result-wide v0

    invoke-virtual {p3, v0, v1}, Ljava/util/Date;->setTime(J)V

    .line 1290
    invoke-virtual {p2, p3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1291
    iget-wide p2, p0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mNoteDuration:J

    const-wide/16 v0, -0x1

    cmp-long p2, p2, v0

    if-eqz p2, :cond_4f

    const-string p2, " for "

    .line 1292
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1293
    iget-wide p2, p0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mNoteDuration:J

    invoke-static {p2, p3}, Lcom/android/server/appop/DiscreteRegistry;->-$$Nest$smdiscretizeDuration(J)J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Ljava/io/PrintWriter;->print(J)V

    const-string p2, " milliseconds "

    .line 1294
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1296
    :cond_4f
    iget p2, p0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mAttributionFlags:I

    if-eqz p2, :cond_67

    const-string p2, " attribution flags="

    .line 1297
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1298
    iget p2, p0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mAttributionFlags:I

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(I)V

    const-string p2, " with chainId="

    .line 1299
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1300
    iget p0, p0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mAttributionChainId:I

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(I)V

    .line 1302
    :cond_67
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public equalsExceptDuration(Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;)Z
    .registers 6

    .line 1275
    iget-wide v0, p0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mNoteTime:J

    iget-wide v2, p1, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mNoteTime:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_22

    iget v0, p0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mUidState:I

    iget v1, p1, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mUidState:I

    if-ne v0, v1, :cond_22

    iget v0, p0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mOpFlag:I

    iget v1, p1, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mOpFlag:I

    if-ne v0, v1, :cond_22

    iget v0, p0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mAttributionFlags:I

    iget v1, p1, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mAttributionFlags:I

    if-ne v0, v1, :cond_22

    iget p0, p0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mAttributionChainId:I

    iget p1, p1, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mAttributionChainId:I

    if-ne p0, p1, :cond_22

    const/4 p0, 0x1

    goto :goto_23

    :cond_22
    const/4 p0, 0x0

    :goto_23
    return p0
.end method

.method public final serialize(Landroid/util/TypedXmlSerializer;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1306
    iget-wide v0, p0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mNoteTime:J

    const/4 v2, 0x0

    const-string/jumbo v3, "nt"

    invoke-interface {p1, v2, v3, v0, v1}, Landroid/util/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 1307
    iget-wide v0, p0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mNoteDuration:J

    const-wide/16 v3, -0x1

    cmp-long v3, v0, v3

    if-eqz v3, :cond_17

    const-string/jumbo v3, "nd"

    .line 1308
    invoke-interface {p1, v2, v3, v0, v1}, Landroid/util/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 1310
    :cond_17
    iget v0, p0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mAttributionFlags:I

    if-eqz v0, :cond_20

    const-string v1, "af"

    .line 1311
    invoke-interface {p1, v2, v1, v0}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 1313
    :cond_20
    iget v0, p0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mAttributionChainId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2a

    const-string v1, "ci"

    .line 1314
    invoke-interface {p1, v2, v1, v0}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 1316
    :cond_2a
    iget v0, p0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mUidState:I

    const-string/jumbo v1, "us"

    invoke-interface {p1, v2, v1, v0}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 1317
    iget p0, p0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mOpFlag:I

    const-string v0, "f"

    invoke-interface {p1, v2, v0, p0}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method
