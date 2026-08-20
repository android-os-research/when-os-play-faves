.class public Lcom/android/server/am/FreecessHandler$FreecessHandlerHolder;
.super Ljava/lang/Object;
.source "FreecessHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/FreecessHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FreecessHandlerHolder"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/server/am/FreecessHandler;


# direct methods
.method public static bridge synthetic -$$Nest$sfgetINSTANCE()Lcom/android/server/am/FreecessHandler;
    .registers 1

    sget-object v0, Lcom/android/server/am/FreecessHandler$FreecessHandlerHolder;->INSTANCE:Lcom/android/server/am/FreecessHandler;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 2

    .line 88
    new-instance v0, Lcom/android/server/am/FreecessHandler;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/am/FreecessHandler;-><init>(Lcom/android/server/am/FreecessHandler-IA;)V

    sput-object v0, Lcom/android/server/am/FreecessHandler$FreecessHandlerHolder;->INSTANCE:Lcom/android/server/am/FreecessHandler;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
