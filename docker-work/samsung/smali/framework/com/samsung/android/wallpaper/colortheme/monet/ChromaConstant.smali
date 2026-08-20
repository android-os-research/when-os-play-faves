.class final Lcom/samsung/android/wallpaper/colortheme/monet/ChromaConstant;
.super Ljava/lang/Object;
.source "ColorScheme.java"

# interfaces
.implements Lcom/samsung/android/wallpaper/colortheme/monet/Chroma;


# instance fields
.field private final blacklist chroma:D


# direct methods
.method public constructor blacklist <init>(D)V
    .registers 3
    .param p1, "chroma"    # D

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 203
    iput-wide p1, p0, Lcom/samsung/android/wallpaper/colortheme/monet/ChromaConstant;->chroma:D

    .line 204
    return-void
.end method


# virtual methods
.method public blacklist get(Lcom/android/internal/graphics/cam/Cam;)D
    .registers 4
    .param p1, "sourceColor"    # Lcom/android/internal/graphics/cam/Cam;

    .line 195
    iget-wide v0, p0, Lcom/samsung/android/wallpaper/colortheme/monet/ChromaConstant;->chroma:D

    return-wide v0
.end method

.method public final blacklist getChroma()D
    .registers 3

    .line 199
    iget-wide v0, p0, Lcom/samsung/android/wallpaper/colortheme/monet/ChromaConstant;->chroma:D

    return-wide v0
.end method
