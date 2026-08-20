.class public Lcom/android/server/BootReceiver$SaveLastkmsg$1;
.super Ljava/lang/Object;
.source "BootReceiver.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/BootReceiver$SaveLastkmsg;->_trimADumpFile([Ljava/io/File;Ljava/util/List;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/android/server/BootReceiver$SaveLastkmsg;


# direct methods
.method public constructor <init>(Lcom/android/server/BootReceiver$SaveLastkmsg;)V
    .registers 2

    .line 721
    iput-object p1, p0, Lcom/android/server/BootReceiver$SaveLastkmsg$1;->this$1:Lcom/android/server/BootReceiver$SaveLastkmsg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/io/File;Ljava/io/File;)I
    .registers 3

    .line 724
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p2}, Ljava/io/File;->lastModified()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result p0

    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 721
    check-cast p1, Ljava/io/File;

    check-cast p2, Ljava/io/File;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/BootReceiver$SaveLastkmsg$1;->compare(Ljava/io/File;Ljava/io/File;)I

    move-result p0

    return p0
.end method
