.class public Lcom/android/server/enterprise/auditlog/CircularBuffer$1;
.super Ljava/lang/Object;
.source "CircularBuffer.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/enterprise/auditlog/CircularBuffer;->dirListByAscendingDate(Ljava/io/File;)[Ljava/io/File;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/auditlog/CircularBuffer;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/auditlog/CircularBuffer;)V
    .registers 2

    .line 232
    iput-object p1, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer$1;->this$0:Lcom/android/server/enterprise/auditlog/CircularBuffer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 234
    check-cast p1, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    check-cast p2, Ljava/io/File;

    .line 235
    invoke-virtual {p2}, Ljava/io/File;->lastModified()J

    move-result-wide p1

    .line 234
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result p0

    return p0
.end method
