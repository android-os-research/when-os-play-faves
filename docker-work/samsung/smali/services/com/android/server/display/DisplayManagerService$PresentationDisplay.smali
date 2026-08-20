.class public Lcom/android/server/display/DisplayManagerService$PresentationDisplay;
.super Ljava/lang/Object;
.source "DisplayManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PresentationDisplay"
.end annotation


# instance fields
.field public displayId:I

.field public packageName:Ljava/lang/String;


# direct methods
.method public static bridge synthetic -$$Nest$fgetdisplayId(Lcom/android/server/display/DisplayManagerService$PresentationDisplay;)I
    .registers 1

    iget p0, p0, Lcom/android/server/display/DisplayManagerService$PresentationDisplay;->displayId:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetpackageName(Lcom/android/server/display/DisplayManagerService$PresentationDisplay;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$PresentationDisplay;->packageName:Ljava/lang/String;

    return-object p0
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .registers 3

    .line 6142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6143
    iput p1, p0, Lcom/android/server/display/DisplayManagerService$PresentationDisplay;->displayId:I

    .line 6144
    iput-object p2, p0, Lcom/android/server/display/DisplayManagerService$PresentationDisplay;->packageName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4

    if-eqz p1, :cond_16

    .line 6154
    check-cast p1, Lcom/android/server/display/DisplayManagerService$PresentationDisplay;

    iget v0, p1, Lcom/android/server/display/DisplayManagerService$PresentationDisplay;->displayId:I

    iget v1, p0, Lcom/android/server/display/DisplayManagerService$PresentationDisplay;->displayId:I

    if-ne v0, v1, :cond_16

    iget-object p1, p1, Lcom/android/server/display/DisplayManagerService$PresentationDisplay;->packageName:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$PresentationDisplay;->packageName:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_16

    const/4 p0, 0x1

    goto :goto_17

    :cond_16
    const/4 p0, 0x0

    :goto_17
    return p0
.end method

.method public getDisplayId()I
    .registers 1

    .line 6158
    iget p0, p0, Lcom/android/server/display/DisplayManagerService$PresentationDisplay;->displayId:I

    return p0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 1

    .line 6162
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$PresentationDisplay;->packageName:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .registers 2

    .line 6149
    iget v0, p0, Lcom/android/server/display/DisplayManagerService$PresentationDisplay;->displayId:I

    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$PresentationDisplay;->packageName:Ljava/lang/String;

    if-nez p0, :cond_8

    const/4 p0, -0x1

    goto :goto_c

    :cond_8
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    :goto_c
    mul-int/2addr v0, p0

    return v0
.end method
