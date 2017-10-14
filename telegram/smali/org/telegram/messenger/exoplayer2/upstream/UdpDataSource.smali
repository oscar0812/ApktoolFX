.class public final Lorg/telegram/messenger/exoplayer2/upstream/UdpDataSource;
.super Ljava/lang/Object;
.source "UdpDataSource.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer2/upstream/DataSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/exoplayer2/upstream/UdpDataSource$UdpDataSourceException;
    }
.end annotation


# static fields
.field public static final DEAFULT_SOCKET_TIMEOUT_MILLIS:I = 0x1f40

.field public static final DEFAULT_MAX_PACKET_SIZE:I = 0x7d0


# instance fields
.field private address:Ljava/net/InetAddress;

.field private final listener:Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/telegram/messenger/exoplayer2/upstream/TransferListener",
            "<-",
            "Lorg/telegram/messenger/exoplayer2/upstream/UdpDataSource;",
            ">;"
        }
    .end annotation
.end field

.field private multicastSocket:Ljava/net/MulticastSocket;

.field private opened:Z

.field private final packet:Ljava/net/DatagramPacket;

.field private final packetBuffer:[B

.field private packetRemaining:I

.field private socket:Ljava/net/DatagramSocket;

.field private socketAddress:Ljava/net/InetSocketAddress;

.field private final socketTimeoutMillis:I

.field private uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/exoplayer2/upstream/TransferListener",
            "<-",
            "Lorg/telegram/messenger/exoplayer2/upstream/UdpDataSource;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 72
    .local p1, "listener":Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;, "Lorg/telegram/messenger/exoplayer2/upstream/TransferListener<-Lorg/telegram/messenger/exoplayer2/upstream/UdpDataSource;>;"
    const/16 v0, 0x7d0

    invoke-direct {p0, p1, v0}, Lorg/telegram/messenger/exoplayer2/upstream/UdpDataSource;-><init>(Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;I)V

    .line 73
    return-void
.end method

.method public constructor <init>(Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;I)V
    .locals 1
    .param p2, "maxPacketSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/exoplayer2/upstream/TransferListener",
            "<-",
            "Lorg/telegram/messenger/exoplayer2/upstream/UdpDataSource;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 80
    .local p1, "listener":Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;, "Lorg/telegram/messenger/exoplayer2/upstream/TransferListener<-Lorg/telegram/messenger/exoplayer2/upstream/UdpDataSource;>;"
    const/16 v0, 0x1f40

    invoke-direct {p0, p1, p2, v0}, Lorg/telegram/messenger/exoplayer2/upstream/UdpDataSource;-><init>(Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;II)V

    .line 81
    return-void
.end method

.method public constructor <init>(Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;II)V
    .locals 3
    .param p2, "maxPacketSize"    # I
    .param p3, "socketTimeoutMillis"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/exoplayer2/upstream/TransferListener",
            "<-",
            "Lorg/telegram/messenger/exoplayer2/upstream/UdpDataSource;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 90
    .local p1, "listener":Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;, "Lorg/telegram/messenger/exoplayer2/upstream/TransferListener<-Lorg/telegram/messenger/exoplayer2/upstream/UdpDataSource;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/upstream/UdpDataSource;->listener:Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;

    .line 92
    iput p3, p0, Lorg/telegram/messenger/exoplayer2/upstream/UdpDataSource;->socketTimeoutMillis:I

    .line 93
    new-array v0, p2, [B

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/UdpDataSource;->packetBuffer:[B

    .line 94
    new-instance v0, Ljava/net/DatagramPacket;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/UdpDataSource;->packetBuffer:[B

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p2}, Ljava/net/DatagramPacket;-><init>([BII)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/UdpDataSource;->packet:Ljava/net/DatagramPacket;

    .line 95
    return-void
.end method


# virtual methods
.method public close()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 163
    iput-object v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/UdpDataSource;->uri:Landroid/net/Uri;

    .line 164
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/UdpDataSource;->multicastSocket:Ljava/net/MulticastSocket;

    if-eqz v0, :cond_0

    .line 166
    :try_start_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/UdpDataSource;->multicastSocket:Ljava/net/MulticastSocket;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/UdpDataSource;->address:Ljava/net/InetAddress;

    invoke-virtual {v0, v1}, Ljava/net/MulticastSocket;->leaveGroup(Ljava/net/InetAddress;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    :goto_0
    iput-object v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/UdpDataSource;->multicastSocket:Ljava/net/MulticastSocket;

    .line 172
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/UdpDataSource;->socket:Ljava/net/DatagramSocket;

    if-eqz v0, :cond_1

    .line 173
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/UdpDataSource;->socket:Ljava/net/DatagramSocket;

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V

    .line 174
    iput-object v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/UdpDataSource;->socket:Ljava/net/DatagramSocket;

    .line 176
    :cond_1
    iput-object v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/UdpDataSource;->address:Ljava/net/InetAddress;

    .line 177
    iput-object v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/UdpDataSource;->socketAddress:Ljava/net/InetSocketAddress;

    .line 178
    iput v3, p0, Lorg/telegram/messenger/exoplayer2/upstream/UdpDataSource;->packetRemaining:I

    .line 179
    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/UdpDataSource;->opened:Z

    if-eqz v0, :cond_2

    .line 180
    iput-boolean v3, p0, Lorg/telegram/messenger/exoplayer2/upstream/UdpDataSource;->opened:Z

    .line 181
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/UdpDataSource;->listener:Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;

    if-eqz v0, :cond_2

    .line 182
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/UdpDataSource;->listener:Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;

    invoke-interface {v0, p0}, Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;->onTransferEnd(Ljava/lang/Object;)V

    .line 185
    :cond_2
    return-void

    .line 167
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/UdpDataSource;->uri:Landroid/net/Uri;

    return-object v0
.end method

.method public open(Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;)J
    .locals 6
    .param p1, "dataSpec"    # Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/upstream/UdpDataSource$UdpDataSourceException;
        }
    .end annotation

    .prologue
    .line 99
    iget-object v3, p1, Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;->uri:Landroid/net/Uri;

    iput-object v3, p0, Lorg/telegram/messenger/exoplayer2/upstream/UdpDataSource;->uri:Landroid/net/Uri;

    .line 100
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/upstream/UdpDataSource;->uri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 101
    .local v1, "host":Ljava/lang/String;
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/upstream/UdpDataSource;->uri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->getPort()I

    move-result v2

    .line 104
    .local v2, "port":I
    :try_start_0
    invoke-static {v1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v3

    iput-object v3, p0, Lorg/telegram/messenger/exoplayer2/upstream/UdpDataSource;->address:Ljava/net/InetAddress;

    .line 105
    new-instance v3, Ljava/net/InetSocketAddress;

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/upstream/UdpDataSource;->address:Ljava/net/InetAddress;

    invoke-direct {v3, v4, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    iput-object v3, p0, Lorg/telegram/messenger/exoplayer2/upstream/UdpDataSource;->socketAddress:Ljava/net/InetSocketAddress;

    .line 106
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/upstream/UdpDataSource;->address:Ljava/net/InetAddress;

    invoke-virtual {v3}, Ljava/net/InetAddress;->isMulticastAddress()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 107
    new-instance v3, Ljava/net/MulticastSocket;

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/upstream/UdpDataSource;->socketAddress:Ljava/net/InetSocketAddress;

    invoke-direct {v3, v4}, Ljava/net/MulticastSocket;-><init>(Ljava/net/SocketAddress;)V

    iput-object v3, p0, Lorg/telegram/messenger/exoplayer2/upstream/UdpDataSource;->multicastSocket:Ljava/net/MulticastSocket;

    .line 108
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/upstream/UdpDataSource;->multicastSocket:Ljava/net/MulticastSocket;

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/upstream/UdpDataSource;->address:Ljava/net/InetAddress;

    invoke-virtual {v3, v4}, Ljava/net/MulticastSocket;->joinGroup(Ljava/net/InetAddress;)V

    .line 109
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/upstream/UdpDataSource;->multicastSocket:Ljava/net/MulticastSocket;

    iput-object v3, p0, Lorg/telegram/messenger/exoplayer2/upstream/UdpDataSource;->socket:Ljava/net/DatagramSocket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    :goto_0
    :try_start_1
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/upstream/UdpDataSource;->socket:Ljava/net/DatagramSocket;

    iget v4, p0, Lorg/telegram/messenger/exoplayer2/upstream/UdpDataSource;->socketTimeoutMillis:I

    invoke-virtual {v3, v4}, Ljava/net/DatagramSocket;->setSoTimeout(I)V
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_1

    .line 123
    const/4 v3, 0x1

    iput-boolean v3, p0, Lorg/telegram/messenger/exoplayer2/upstream/UdpDataSource;->opened:Z

    .line 124
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/upstream/UdpDataSource;->listener:Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;

    if-eqz v3, :cond_0

    .line 125
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/upstream/UdpDataSource;->listener:Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;

    invoke-interface {v3, p0, p1}, Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;->onTransferStart(Ljava/lang/Object;Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;)V

    .line 127
    :cond_0
    const-wide/16 v4, -0x1

    return-wide v4

    .line 111
    :cond_1
    :try_start_2
    new-instance v3, Ljava/net/DatagramSocket;

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/upstream/UdpDataSource;->socketAddress:Ljava/net/InetSocketAddress;

    invoke-direct {v3, v4}, Ljava/net/DatagramSocket;-><init>(Ljava/net/SocketAddress;)V

    iput-object v3, p0, Lorg/telegram/messenger/exoplayer2/upstream/UdpDataSource;->socket:Ljava/net/DatagramSocket;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 113
    :catch_0
    move-exception v0

    .line 114
    .local v0, "e":Ljava/io/IOException;
    new-instance v3, Lorg/telegram/messenger/exoplayer2/upstream/UdpDataSource$UdpDataSourceException;

    invoke-direct {v3, v0}, Lorg/telegram/messenger/exoplayer2/upstream/UdpDataSource$UdpDataSourceException;-><init>(Ljava/io/IOException;)V

    throw v3

    .line 119
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 120
    .local v0, "e":Ljava/net/SocketException;
    new-instance v3, Lorg/telegram/messenger/exoplayer2/upstream/UdpDataSource$UdpDataSourceException;

    invoke-direct {v3, v0}, Lorg/telegram/messenger/exoplayer2/upstream/UdpDataSource$UdpDataSourceException;-><init>(Ljava/io/IOException;)V

    throw v3
.end method

.method public read([BII)I
    .locals 5
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "readLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/upstream/UdpDataSource$UdpDataSourceException;
        }
    .end annotation

    .prologue
    .line 132
    if-nez p3, :cond_0

    .line 133
    const/4 v0, 0x0

    .line 153
    :goto_0
    return v0

    .line 136
    :cond_0
    iget v3, p0, Lorg/telegram/messenger/exoplayer2/upstream/UdpDataSource;->packetRemaining:I

    if-nez v3, :cond_1

    .line 139
    :try_start_0
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/upstream/UdpDataSource;->socket:Ljava/net/DatagramSocket;

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/upstream/UdpDataSource;->packet:Ljava/net/DatagramPacket;

    invoke-virtual {v3, v4}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/upstream/UdpDataSource;->packet:Ljava/net/DatagramPacket;

    invoke-virtual {v3}, Ljava/net/DatagramPacket;->getLength()I

    move-result v3

    iput v3, p0, Lorg/telegram/messenger/exoplayer2/upstream/UdpDataSource;->packetRemaining:I

    .line 144
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/upstream/UdpDataSource;->listener:Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;

    if-eqz v3, :cond_1

    .line 145
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/upstream/UdpDataSource;->listener:Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;

    iget v4, p0, Lorg/telegram/messenger/exoplayer2/upstream/UdpDataSource;->packetRemaining:I

    invoke-interface {v3, p0, v4}, Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;->onBytesTransferred(Ljava/lang/Object;I)V

    .line 149
    :cond_1
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/upstream/UdpDataSource;->packet:Ljava/net/DatagramPacket;

    invoke-virtual {v3}, Ljava/net/DatagramPacket;->getLength()I

    move-result v3

    iget v4, p0, Lorg/telegram/messenger/exoplayer2/upstream/UdpDataSource;->packetRemaining:I

    sub-int v2, v3, v4

    .line 150
    .local v2, "packetOffset":I
    iget v3, p0, Lorg/telegram/messenger/exoplayer2/upstream/UdpDataSource;->packetRemaining:I

    invoke-static {v3, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 151
    .local v0, "bytesToRead":I
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/upstream/UdpDataSource;->packetBuffer:[B

    invoke-static {v3, v2, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 152
    iget v3, p0, Lorg/telegram/messenger/exoplayer2/upstream/UdpDataSource;->packetRemaining:I

    sub-int/2addr v3, v0

    iput v3, p0, Lorg/telegram/messenger/exoplayer2/upstream/UdpDataSource;->packetRemaining:I

    goto :goto_0

    .line 140
    .end local v0    # "bytesToRead":I
    .end local v2    # "packetOffset":I
    :catch_0
    move-exception v1

    .line 141
    .local v1, "e":Ljava/io/IOException;
    new-instance v3, Lorg/telegram/messenger/exoplayer2/upstream/UdpDataSource$UdpDataSourceException;

    invoke-direct {v3, v1}, Lorg/telegram/messenger/exoplayer2/upstream/UdpDataSource$UdpDataSourceException;-><init>(Ljava/io/IOException;)V

    throw v3
.end method
