.class public final Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceIdHolder$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceIdHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final a:Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceIdHolder;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceIdHolder;

    invoke-direct {v0}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceIdHolder;-><init>()V

    sput-object v0, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceIdHolder$a;->a:Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceIdHolder;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceIdHolder;
    .registers 1

    sget-object v0, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceIdHolder$a;->a:Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceIdHolder;

    return-object v0
.end method
