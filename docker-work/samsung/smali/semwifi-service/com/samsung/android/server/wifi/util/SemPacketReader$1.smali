.class Lcom/samsung/android/server/wifi/util/SemPacketReader$1;
.super Ljava/lang/Object;
.source "SemPacketReader.java"

# interfaces
.implements Landroid/os/MessageQueue$OnFileDescriptorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/util/SemPacketReader;->createAndRegisterFd()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/util/SemPacketReader;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/util/SemPacketReader;)V
    .registers 2

    .line 178
    iput-object p1, p0, Lcom/samsung/android/server/wifi/util/SemPacketReader$1;->this$0:Lcom/samsung/android/server/wifi/util/SemPacketReader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFileDescriptorEvents(Ljava/io/FileDescriptor;I)I
    .registers 3

    .line 184
    iget-object p1, p0, Lcom/samsung/android/server/wifi/util/SemPacketReader$1;->this$0:Lcom/samsung/android/server/wifi/util/SemPacketReader;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/util/SemPacketReader;->-$$Nest$misRunning(Lcom/samsung/android/server/wifi/util/SemPacketReader;)Z

    move-result p1

    if-eqz p1, :cond_13

    iget-object p1, p0, Lcom/samsung/android/server/wifi/util/SemPacketReader$1;->this$0:Lcom/samsung/android/server/wifi/util/SemPacketReader;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/util/SemPacketReader;->-$$Nest$mhandleInput(Lcom/samsung/android/server/wifi/util/SemPacketReader;)Z

    move-result p1

    if-nez p1, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x5

    return p0

    .line 185
    :cond_13
    :goto_13
    iget-object p0, p0, Lcom/samsung/android/server/wifi/util/SemPacketReader$1;->this$0:Lcom/samsung/android/server/wifi/util/SemPacketReader;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/util/SemPacketReader;->-$$Nest$munregisterAndDestroyFd(Lcom/samsung/android/server/wifi/util/SemPacketReader;)V

    const/4 p0, 0x0

    return p0
.end method
