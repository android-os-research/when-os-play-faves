.class public Lcom/android/server/inputmethod/InputMethodManagerService$3;
.super Ljava/lang/Object;
.source "InputMethodManagerService.java"

# interfaces
.implements Lcom/android/server/utils/PriorityDump$PriorityDumper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/inputmethod/InputMethodManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/inputmethod/InputMethodManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/inputmethod/InputMethodManagerService;)V
    .registers 2

    .line 6632
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$3;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Z)V
    .registers 5

    .line 6675
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/inputmethod/InputMethodManagerService$3;->dumpNormal(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Z)V

    return-void
.end method

.method public final dumpAsProtoNoCheck(Ljava/io/FileDescriptor;)V
    .registers 5

    .line 6680
    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v0, p1}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 6681
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$3;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    const-wide v1, 0x10b00000003L

    invoke-static {p0, v0, v1, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$mdumpDebug(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/util/proto/ProtoOutputStream;J)V

    .line 6682
    invoke-virtual {v0}, Landroid/util/proto/ProtoOutputStream;->flush()V

    return-void
.end method

.method public dumpCritical(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Z)V
    .registers 5

    if-eqz p4, :cond_6

    .line 6641
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService$3;->dumpAsProtoNoCheck(Ljava/io/FileDescriptor;)V

    goto :goto_c

    .line 6643
    :cond_6
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$3;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    const/4 p4, 0x1

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$mdumpAsStringNoCheck(Lcom/android/server/inputmethod/InputMethodManagerService;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Z)V

    :goto_c
    return-void
.end method

.method public dumpHigh(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Z)V
    .registers 5

    .line 6653
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/inputmethod/InputMethodManagerService$3;->dumpNormal(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Z)V

    return-void
.end method

.method public dumpNormal(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Z)V
    .registers 5

    if-eqz p4, :cond_6

    .line 6663
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService$3;->dumpAsProtoNoCheck(Ljava/io/FileDescriptor;)V

    goto :goto_c

    .line 6665
    :cond_6
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$3;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    const/4 p4, 0x0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$mdumpAsStringNoCheck(Lcom/android/server/inputmethod/InputMethodManagerService;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Z)V

    :goto_c
    return-void
.end method
