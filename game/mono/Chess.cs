using Godot;
using System;

public class ChessPiece : Sprite2D
{
	private const int BoardSize = 8;

	private Texture whiteKing;
	private Texture blackKing;
	private Texture whiteQueen;
	private Texture blackQueen;
	private Texture whiteRook;
	private Texture blackRook;
	private Texture whiteBishop;
	private Texture blackBishop;
	private Texture whiteKnight;
	private Texture blackKnight;
	private Texture whitePawn;
	private Texture blackPawn;

	public override void _Ready()
	{
		// Preload resources
		whiteKing = GD.Load<Texture>("res://resources/bw.png");
		blackKing = GD.Load<Texture>("res://resources/hw.png");
		whiteQueen = GD.Load<Texture>("res://resources/bh.png");
		blackQueen = GD.Load<Texture>("res://resources/hh.png");
		whiteRook = GD.Load<Texture>("res://resources/bj.png");
		blackRook = GD.Load<Texture>("res://resources/hj.png");
		whiteBishop = GD.Load<Texture>("res://resources/bx.png");
		blackBishop = GD.Load<Texture>("res://resources/hx.png");
		whiteKnight = GD.Load<Texture>("res://resources/bm.png");
		blackKnight = GD.Load<Texture>("res://resources/hm.png");
		whitePawn = GD.Load<Texture>("res://resources/bb.png");
		blackPawn = GD.Load<Texture>("res://resources/hb.png");
	}

	public override void _Process(float delta)
	{
		// Implement your per-frame logic here.
	}
}
